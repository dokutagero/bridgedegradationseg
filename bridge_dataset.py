from PIL import Image
from sklearn.model_selection import train_test_split
import numpy as np
import os


def load_data(percent_of_damage=0.2):
    root_dir = '/src/workspace/dataset/'
    dataset = 'bridge_masks_patches/'
    patch_dir = '100/'
    deck_dirs = ['deck_a/', 'deck_c/', 'deck_d/', 'deck_e/']
    image_list, label_list = [], []
    for deck_dir in deck_dirs:
        mask_fpath = os.path.join(root_dir, dataset, patch_dir, deck_dir)
        image_dirs = os.listdir(mask_fpath)
        for image_dir in image_dirs:
            image_names = sorted(
                os.listdir(os.path.join(mask_fpath, image_dir))
            )
            for image_name in image_names:
                img_fpath = os.path.join(
                    root_dir,
                    'images_patches',
                    patch_dir,
                    deck_dir
                )
                img_path = os.path.join(img_fpath, image_dir, image_name)
                mask_path = os.path.join(mask_fpath, image_dir, image_name)
                img = np.asarray(Image.open(img_path))
                mask = np.asarray(Image.open(mask_path))
                image_list.append(img)
                damage_pixels = (mask / 255).sum()
                if damage_pixels > 100 * 100 * percent_of_damage:
                    label_list.append(1)
                else:
                    label_list.append(0)
    x = np.array(image_list)
    y = np.array(label_list)[:, np.newaxis]
    x_train, x_test, y_train, y_test = train_test_split(
        x,
        y,
        test_size=0.33,
        random_state=42
    )

    return (x_train, y_train), (x_test, y_test)


if __name__ == '__main__':
    (x_train, y_train), (x_test, y_test) = load_data()
