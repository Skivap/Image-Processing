inputIMG = im2single(imread("Image.tif"));

% Original Image
figure(1);
imshow(inputIMG);

% Image Motion Blur
freqDomain = fftshift(fft2(inputIMG));
[imageBlurFreq, H] = addMotionBlur(freqDomain, 1, 0.1, 0.1);

imageBlur = ifft2(ifftshift(imageBlurFreq));
figure(2);
imshow(imageBlur);

% Add Sin Noise
imageNoise = addSinNoise(imageBlur, 0.3, 10, 10);
figure(3);
imshow(imageNoise);

% Weiner Filtered
NoiseFreq = fftshift(fft2(imageNoise));

% #$1
outputFreq = wienerFiltering(NoiseFreq, H, 0.1);
result = ifft2(ifftshift(outputFreq));
figure(4);
imshow(result);

psnr = computePSNR(inputIMG, result)

% #2
outputFreq = wienerFiltering(NoiseFreq, H, 0.01);
result = ifft2(ifftshift(outputFreq));
figure(5);
imshow(result);

psnr = computePSNR(inputIMG, result)

% #3
outputFreq = wienerFiltering(NoiseFreq, H, 0.0001);
result = ifft2(ifftshift(outputFreq));
figure(6);
imshow(result);

psnr = computePSNR(inputIMG, result)