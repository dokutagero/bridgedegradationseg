
import collections
import os.path as osp

import chainer
import numpy as np
from PIL import Image
import scipy.io
# from .. import data

DATASET_BRIDGE_DIR = osp.expanduser('~/repos/bridgedegradationseg/dataset/')

class BridgeSegPatchBase(chainer.dataset.DatasetMixin):

    class_names = np.array(['non-damage', 'damage'])

    def __init__(self, data_file, dataset_dir):

        self.files = []
        imgsets_file = osp.join(dataset_dir, "{}.txt".format(data_file))
        # print(imgsets_file)
        for did in open(imgsets_file):
            did = did.strip()
            img_file = dataset_dir+'/images_patches/100'+'{}.png'.format(did)
            lbl_file = dataset_dir+'/bridge_masks_patches/100'+'{}.png'.format(did)
            self.files.append((img_file, lbl_file))

    def __len__(self):
        return len(self.files)

    def get_example(self, index):
        data_file = self.files[index]
        img_file = data_file[0]
        img = Image.open(img_file)
        lbl_file = data_file[1]
        lbl = Image.open(lbl_file)
        
        img = np.array(img, dtype=np.float32)
        img = img/255
        img = img.transpose(2,0,1)
        lbl = np.array(img, dtype=np.uint8)
        lbl = lbl/255
        if np.sum(lbl) > lbl.size*0.8:
            lbl = 1
        else:
            lbl = 0
        return img, lbl

class BridgeSegPatch(BridgeSegPatchBase):
    def __init__(self, data_file, dataset_dir):
       super(BridgeSegPatch, self).__init__(data_file, dataset_dir) 


    @staticmethod
    def download():
        print("Not implemented yet (could be a good idea)")
