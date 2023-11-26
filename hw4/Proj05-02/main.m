
inputIMG = im2uint8(imread("Image1.tif"));
outputIMG = medianFilter(inputIMG);

figure(1)
imshow(inputIMG)
figure(2)
imshow(outputIMG);

inputIMG = im2uint8(imread("Image2.tif"));
outputIMG = medianFilter(inputIMG);

figure(3)
imshow(inputIMG)
figure(4)
imshow(outputIMG);

inputIMG = im2uint8(imread("Image3.tif"));
outputIMG = medianFilter(inputIMG);

figure(5)
imshow(inputIMG)
figure(6)
imshow(outputIMG);

inputIMG = im2uint8(imread("Image4.tif"));
outputIMG = medianFilter(inputIMG);

figure(7)
imshow(inputIMG)
figure(8)
imshow(outputIMG);