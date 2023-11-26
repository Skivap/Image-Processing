inputIMG = im2single(imread("Image.tif"));
%inputIMG = imresize(inputIMG, .25);

% (a) Original Image
figure;
imshow(inputIMG);

% (b) RESIZE
figure;
[N, M] = size(inputIMG);
b = padarray(inputIMG, [N, M], 0, "post");
imshow(b);

% (c) Multiply by -1 ^ (x + y)
figure;
[N_b, M_b] = size(b);
x = 1:N_b;
y = 1:M_b;
y = y';
c(x, y) = b(x, y).*(-1).^(x + y);
imshow(c);

% (d) Spectrum
figure;
DFT = myDFT2(c);
f1 = log(1 + DFT);
fm = max(f1, [], "all");
imshow(im2uint8(f1 / fm));

% (e) Use Gaussian Low Filter
figure;
GLPF_filt = single(myGLPF(10, N_b, M_b));
imshow(GLPF_filt)

% (f)
figure;
f = DFT .* GLPF_filt;
imshow(f);

% (g)
figure;
g = myIDFT2(f);
res(x, y) = g(x, y).*(-1).^(x + y);
imshow(double(res));

% RESULT
outputIMG = res(1:N, 1:M);
figure;
imshow(outputIMG);
