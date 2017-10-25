import cv2
import numpy as np
import os, sys
from PIL import Image
import progressbar

def illuminationcorrection (img, clipLim = 1.0, gridSize = 32):

	#stolen from stackoverflow https://stackoverflow.com/questions/24341114/simple-illumination-correction-in-images-opencv-c/39744436#39744436

	#-----Converting image to LAB Color model----------------------------------- 
	lab = cv2.cvtColor(img, cv2.COLOR_BGR2LAB)

	#-----Splitting the LAB image to different channels-------------------------
	l, a, b = cv2.split(lab)

	#-----Applying CLAHE to L-channel-------------------------------------------
	clahe = cv2.createCLAHE(clipLimit=clipLim, tileGridSize=(gridSize, gridSize))
	cl = clahe.apply(l)

	#-----Merge the CLAHE enhanced L-channel with the a and b channel-----------
	limg = cv2.merge((cl,a,b))

	#-----Converting image from LAB Color model to RGB model--------------------
	final = cv2.cvtColor(limg, cv2.COLOR_LAB2BGR)
	
	return final




datapath = '../dataset/images'
result_dirs = ['image_patches', 'mask_patches', 'dataset']
bar = progressbar.ProgressBar()
for root, dirs, files in bar(os.walk(datapath)):
	for f in files:
		image_set = root.split('/')[-2]
		# Ignoring weird file and avoiding creating patches from already created ones
		if f.endswith('.jpg') and image_set not in result_dirs and not f.startswith('._'):
			path = os.path.join(root,f)
			img = cv2.imread(path, 1)
			result = illuminationcorrection(img)
			cv2.imshow("before",img) 
			cv2.imshow("result",result) 
			cv2.waitKey(15000)
