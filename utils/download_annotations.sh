#!/bin/bash

mkdir -p ../dataset/annotations
cd ../dataset/annotations

mkdir -p deck_a
cd deck_a

curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_a/0018.xml
cd ..

mkdir -p deck_c
cd deck_c
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0001.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0050.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0061.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0062.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0063.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0067.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0086.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0242.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0243.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0288.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0296.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0302.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0319.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0357.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0360.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0377.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0378.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0379.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0380.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0381.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0382.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0383.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0384.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0385.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0386.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0402.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0405.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0406.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0411.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0413.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0418.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0422.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0423.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0427.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0457.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0494.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0517.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0521.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0531.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0539.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0542.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0568.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0573.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0576.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0579.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0588.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_c/0590.xml

cd ..
mkdir -p deck_d
cd deck_d
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0025.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0029.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0046.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0062.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0063.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0115.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0129.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0130.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0131.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0132.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0133.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0146.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0147.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0152.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0160.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0161.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0165.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0167.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0168.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0169.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0170.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0171.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0197.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0198.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0201.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0216.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0217.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0219.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0220.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0221.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0228.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0230.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0238.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0239.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0241.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0246.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0248.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0249.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0250.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0251.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0252.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0258.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0259.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0260.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0264.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0276.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0280.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0282.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0284.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0285.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0287.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0289.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0291.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0370.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0377.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0392.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0408.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0412.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0413.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0416.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0418.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0431.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0485.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0549.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0559.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0590.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0604.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0647.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0657.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0719.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0731.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0734.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0737.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0740.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0748.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0754.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0756.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0757.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0758.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0762.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0763.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0769.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0772.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0773.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0774.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0823.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/0845.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1018.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1019.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1021.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1059.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1067.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1068.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1072.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1073.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1087.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1089.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1094.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1097.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1117.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1136.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1142.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1151.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1154.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1157.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1162.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1163.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1178.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1184.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1191.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1197.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1233.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1240.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1257.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1264.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1269.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1270.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1278.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1291.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1298.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1300.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1301.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1302.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1303.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1304.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1308.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1313.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1314.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_d/1316.xml

cd ..
mkdir -p deck_e
cd deck_e
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_e/0049.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_e/0051.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_e/0052.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_e/0122.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_e/0143.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_e/0151.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_e/0152.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_e/0208.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_e/0225.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_e/0226.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_e/0228.xml
curl -s -O -u $LABELME_USERNAME:$LABELME_PASSWD https://labelme-nii.mrteera.com/Annotations/deck_e/0229.xml
cd ..
