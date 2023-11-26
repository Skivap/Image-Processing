inputIMG = imread("Image.tif");
prompt = "Input Intensity Level : ";
intensityLevel = input(prompt);

outputIMG = reduceIntensityLevel(inputIMG, intensityLevel);

imshow(outputIMG)