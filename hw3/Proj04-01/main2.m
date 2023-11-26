%without padding

inputIMG = im2single(imread("Image.tif"));

% (a) Original Image

% (b) RESIZE
figure;
[N, M] = size(inputIMG);
tt = inputIMG;

% (c) Multiply by -1 ^ (x + y)
x = 1:N;
y = 1:M;
y = y';
tt(x, y) = tt(x, y).*(-1).^(x + y);

% (d) Spectrum
ttDFT = myDFT2(tt);

% (e) Use Gaussian Low Filter
figure;
filtt = single(myGLPF(10, N_b, M_b));
imshow(filtt)

% (f)
figure;
fttt = ttDFT .* filtt;
imshow(fttt);

% (g)
figure;
gtttt = myIDFT2(fttt);
anss(x, y) = gtttt(x, y).*(-1).^(x + y);
imshow(double(anss));