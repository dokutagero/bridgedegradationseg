import numpy as np
import keras
import utils.preprocess as pp
import os, sys
import dataset.bridge as bridge
from model import PatchModel as pm
from collections import Counter

def get_class_weights(y):
    counter = Counter(y)
    majority = max(counter.values())
    return  {cls: float(majority/count) for cls, count in counter.items()}


if __name__ == '__main__':

    datapath = sys.argv[1]
    data_augmentation = False
    # By default we don't perform data augmentation for initial test
    epochs = int(sys.argv[2])
    damage_ratio = float(sys.argv[3])


    params = {'num_clases' : 2, 'epochs' : epochs}
    # Load data
    data_dict, train_set_idcs, test_set_idcs, x_train, y_train, x_test, y_test = bridge.load_data(datapath, percent_of_damage=damage_ratio)
    # y_train = keras.utils.to_categorical(y_train, params['num_clases'])
    # y_test = keras.utils.to_categorical(y_test, params['num_clases'])

    x_train = x_train.astype('float32')
    x_test = x_test.astype('float32')
    x_train /= 255
    x_test /= 255

    model = pm(x_train, params)
    # # left default params as stated in keras docs. Uses paper ones.
    optimizer = keras.optimizers.adam()

    model.compile(loss="binary_crossentropy", optimizer=optimizer,
                    metrics=['acc'])
    weights = get_class_weights(y_train[:,0].tolist())
    model.fit(x_train, y_train, epochs=params['epochs'], class_weight=weights)
    # model.evaluate(x_test,y_test,verbose=1)
