inputIMG = im2uint8(imread("Image.tif"));

figure(1);
imshow(inputIMG);

figure(2);
outputIMG = addGaussianNoise(inputIMG, 0, 20);
imshow(outputIMG);

figure(3);
outputIMG = addImpulseNoise(inputIMG, 0, 0.1);
imshow(outputIMG);

figure(4);
outputIMG = addImpulseNoise(inputIMG, 0.1, 0);
imshow(outputIMG);

figure(5);
outputIMG = addImpulseNoise(inputIMG, 0.1, 0.1);
imshow(outputIMG);