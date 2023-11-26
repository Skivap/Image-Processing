inputIMG = imread("Image.tif");

prompt = "Input Scaling Level : ";
level = input(prompt);

outputIMG = resizeImage_replication(inputIMG, level);

imshow(outputIMG)