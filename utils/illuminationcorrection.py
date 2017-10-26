import cv2
import numpy as np
from PIL import Image


def illuminationcorrection (pilimg, clipLim = 1.0, gridSize = 32):
    
    #convert PIL image to cv image in lab colorspace
    lab = cv2.cvtColor(np.array(pilimg), cv2.COLOR_RGB2LAB)

    #stolen from stackoverflow https://stackoverflow.com/questions/24341114/simple-illumination-correction-in-images-opencv-c/39744436#39744436
    #-----Converting image to LAB Color model----------------------------------- 
    #lab = cv2.cvtColor(cvimg, cv2.COLOR_BGR2LAB)

    #-----Splitting the LAB image to different channels-------------------------
    l, a, b = cv2.split(lab)

    #-----Applying CLAHE to L-channel-------------------------------------------
    clahe = cv2.createCLAHE(clipLimit=clipLim, tileGridSize=(gridSize, gridSize))
    cl = clahe.apply(l)

    #-----Merge the CLAHE enhanced L-channel with the a and b channel-----------
    limg = cv2.merge((cl,a,b))

    #-----Converting image from LAB Color model to RGB model--------------------
    cvfinal = cv2.cvtColor(limg, cv2.COLOR_LAB2RGB)
    
    #convert drom cv image to PIL image
    pilfinal = Image.fromarray(cvfinal)
    
    return pilfinal
