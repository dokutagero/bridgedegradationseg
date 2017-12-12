import chainer
import os
import bdg.datasets as datasets
from bdg.models.alexnet import Alex
from bdg.models.alexnet import copy_model
from chainer.links.caffe import CaffeFunction
import pickle as pkl

model_path = "/home/dokutagero/repos/bridgedegradationseg/bdg/models/"
caffe_model = os.path.join(model_path, 'bvlc_alexnet.caffemodel')
chainer_model = os.path.join(model_path, 'alexnet_chainer.pkl')

if os.path.isfile(caffe_model):
    print("Caffe model downloaded")

if not os.path.isfile(chainer_model):
    print("Creating chainer model...")
    alexnet = CaffeFunction(caffe_model)
    with open(chainer_model, 'wb') as modelfile:
        pkl.dump(alexnet, modelfile)
else:
    with open(chainer_model, 'rb') as modelfile:
        alexnet = pkl.load(modelfile)


model = Alex(in_channels=3, nclass=2)
copy_model(alexnet, model)

optimizer = chainer.optimizers.SGD(lr=0.001)
optimizer.setup(model)
# optimizer.add_hook(chainer.optimizer.WeightDecay(rate=0.0005))

data = datasets.BridgeSegPatch(data_file='total_dataset_patches_100', dataset_dir='/home/dokutagero/repos/bridgedegradationseg/dataset')
train_data, test_data = chainer.datasets.split_dataset_random(data, int(len(data)*0.8), seed=10)
print('Training set size: ', len(train_data))
print('Testing set size: ', len(test_data))

# validation_data = datasets.BridgeSeg(split='validation_patches')

train_iter = chainer.iterators.SerialIterator(train_data, batch_size=1,
                                                    repeat=True, shuffle=True)
updater = chainer.training.StandardUpdater(train_iter, optimizer,
                                           )                                          #loss_func=chainer.functions.sigmoid_cross_entropy)

trainer = chainer.training.Trainer(updater, stop_trigger=(1, 'epoch'), out='alex_out')
trainer.extend(chainer.training.extensions.LogReport())
trainer.extend(chainer.training.extensions.PrintReport(['epoch', 'main/loss', 'main/accuracy']))
trainer.extend(chainer.training.extensions.ProgressBar())
trainer.run()
