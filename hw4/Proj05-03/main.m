inputIMG = im2single(imread("Image.tif"));

% Sin Noise
SinNoise = addSinNoise(inputIMG, 0.5, 10, 10);

figure(1)
imshow(inputIMG)
figure(2)
imshow(SinNoise);

% Frequency Domain
freqDomainSinNoise = fftshift(fft2(SinNoise));

f1 = log(1 + freqDomainSinNoise);
fm = max(f1, [], "all");
figure(3)
imshow(f1/fm)

% Notch Filtering
[result, Notch] = notchFiltering(freqDomainSinNoise, 5, 10, 10);
figure(4)
imshow(Notch);

% Frequency Domain Result
f1 = log(1 + result);
fm = max(f1, [], "all");
figure(5)
imshow(f1/fm)

% IFFT
figure(6)
final_result = ifft2(ifftshift(result));
imshow(final_result);

% Compute PSNR
out = computePSNR(inputIMG, final_result)