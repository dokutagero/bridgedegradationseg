
from PIL import Image
import os, sys

def dataset_to_txt(datapath):

    """
    Needs refactoring. Pass the bridge_masks path
    """
    paths = []
    bridge_masks_path = 'bridge_masks'
    bridge_images_path = 'images'
    for root, dirs, files in os.walk(datapath):
        if root.split('/')[-1] in ['deck_a', 'deck_c', 'deck_d', 'deck_e']:
            print(root)
            for f in files:
                maskpath = os.path.join(root, f)
                imgpath = os.path.join(root.split('/')[0], bridge_images_path, root.split('/')[-1], f.split('.')[-2]+'.jpg')
                paths.append(imgpath + "," + maskpath)
                
    with open(datapath+'dataset.txt', 'w') as txtfile:
        txtfile.write('\n'.join(paths))



if __name__ == "__main__":
    
    datapath = sys.argv[1]
    dataset_to_txt(datapath)
