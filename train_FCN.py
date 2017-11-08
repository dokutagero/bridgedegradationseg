from model_FCN32 import FCN_Vgg16_32s
import os, sys
import dataset.bridge as bridge
import utils.preprocess as pp
import numpy as np
import keras
from PIL import Image

def load_full_images(datapath):
	bridge_masks_path = 'bridge_masks'
	bridge_images_path = 'images'
	imgs = []
	masks = []
	for root, dirs, files in os.walk(datapath):
            if root.split('/')[-1] in ['deck_a', 'deck_c', 'deck_d', 'deck_e']:
                print(root)
                for f in files:
                        mask = Image.open(os.path.join(root, f))
                        mask = crop_center(mask)
                        imgpath = os.path.join(root.split('/')[0], bridge_images_path, root.split('/')[-1], f.split('.')[-2]+'.jpg')
                        img = Image.open(imgpath)
                        img = crop_center(img)
                        mask = np.asarray(mask)
                        mask.flags.writeable = True
                        masks.append(mask)
                        img = np.asarray(img)
                        img.flags.writeable = True
                        imgs.append(img)
	return imgs, masks

def crop_center(img):
    half_width = img.size[0] // 2
    half_height = img.size[1] // 2

    w = 1024//2
    h = 768//2

    cropped_img = img.crop(
            (
                half_width - w,
                half_height - h,
                half_width + w,
                half_height + h
            )
        )
    return cropped_img


if __name__ == "__main__":
    # model = FCN_Vgg16_32s(input_shape=(None, None, 3), classes=2)

    # import data
    datapath = sys.argv[1]
    data_augmentation = False
    epochs = sys.argv[2]

    imgs, masks = load_full_images(datapath)
    np_imgs = [im/255 for im in imgs]
    #np_masks = [m[np.where(m > 0)]=1 for m in masks]
    # Correcting gray values from jpg compression. Save them again?
    for mask in masks:
        mask[mask > 0] = 1

