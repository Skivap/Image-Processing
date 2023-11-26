inputIMG = imread("Image.tif");

prompt = "Input Scaling Level : ";
level = input(prompt);

outputIMG = resizeImage_bilinear(inputIMG, level);

imshow(outputIMG)