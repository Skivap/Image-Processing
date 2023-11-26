inputIMG = im2single(imread("Image.tif"));

[N, M] = size(inputIMG);
b = padarray(inputIMG, [N, M], 0, "post");

[N_b, M_b] = size(b);
x = 1:N_b;
y = 1:M_b;
y = y';
c(x, y) = b(x, y).*(-1).^(x + y);

res = abs(fft2(c));

f1 = log(1 + res);
fm = max(f1, [], "all");
imshow(im2uint8(f1/fm));

cnst = 5;

M1 = mean(inputIMG, "all")
M2 = res(N+1, M+1) / (N * M)