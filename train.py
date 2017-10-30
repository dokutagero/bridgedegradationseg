import keras
from keras.datasets import cifar10
from keras.preprocessing.image import ImageDataGenerator
from keras.models import Sequential
from keras.layers import Dense, Dropout, Activation, Flatten
from keras.layers import Conv2D, MaxPooling2D

import utils.preprocess as pp
import os, sys
import dataset.bridge as bridge

if __name__ == '__main__':

    datapath = sys.argv[1]
    data_augmentation = False
    # By default we don't perform data augmentation for initial test
    if len(sys.argv) > 2:
        data_augmentation = sys.argv[2]

    # Load data
    data_dict, train_set_idcs, test_set_idcs, x_train, y_train, x_test, y_test = bridge.load_data(datapath)

    x_train = x_train.astype('float32')
    x_test = x_test.astype('float32')
    x_train /= 255
    x_test /= 255


