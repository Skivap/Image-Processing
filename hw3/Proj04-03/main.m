inputIMG = im2single(imread("Image.tif"));

[M, N] = size(inputIMG);
inputIMG = padarray(inputIMG, [M N], 'post');
[N_b, M_b] = size(inputIMG);
x = 1:N_b;
y = 1:M_b;
y = y';
inputIMG(x, y) = inputIMG(x, y).*(-1).^(x + y);

res = fft2(inputIMG);
filt = myGLPF(400, N_b, M_b);
res = res .* filt;
res = ifft2(res);
res(x, y) = res(x, y).*(-1).^(x + y);

outputIMG = res(1:N, 1:M);
imshow(outputIMG);