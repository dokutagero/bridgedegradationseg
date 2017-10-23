import numpy as np
import os, sys
from PIL import Image
import progressbar

def save_patches(datapath, patch_size=100):

    print('Creating patches...')
    bar = progressbar.ProgressBar()
    for root, dirs, files in bar(os.walk(datapath)):
        for f in files:
            if f.endswith('.jpg') and '_' not in f:
                print(os.path.join(root, f))
                patches_path = root + '/' + f.split('.')[0] + '_' + str(patch_size)
                if not os.path.exists(patches_path):
                    os.makedirs(patches_path)
                patches = extract_patches(os.path.join(root,f), patches_path, patch_size)



def extract_patches(imgpath, outpath, patch_size):
    im = Image.open(imgpath)
    # The roll axis swaps axis 0 and 1 since Pillow is column based and np row based
    # im_np = np.rollaxis(np.array(im), 1, 0)

    # Sliding window
    print(im.size)

    for r in range(im.size[1] // patch_size):
        for c in range(im.size[0] // patch_size):
            # if (r+1)*(patch_size) > im.size[0] or (c+1)*patch_size > im.size[1]:
            #     break

            subpatch = im.crop((c*patch_size, r*patch_size, (c+1)*patch_size, (r+1)*patch_size))
            # patch_path = os.path.join('/'.join(imgpath.split('/')[:-1]), imgpath.split('/')[-1].split('.')[0])
            subpatch.save(os.path.join(outpath,str(r)+'_'+str(c)+'.jpg'))
