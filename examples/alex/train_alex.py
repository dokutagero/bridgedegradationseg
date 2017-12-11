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
# optimizer.add_hook(chainer.optimizer.WeightDecay(rate=0.0005))

train_data = datasets.BridgeSeg(split='train_patches')
validation_data = datasets.BridgeSeg(split='validation_patches')
