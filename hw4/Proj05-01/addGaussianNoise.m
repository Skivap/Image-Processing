function output_s = addGaussianNoise(input_s, mu, sigma)
    input_s = double(input_s);

    [row, col] = size(input_s);
    r = randn(row, col);

    noise = double(sigma * r + mu);
    output_s = input_s + noise;

    output_s = uint8(mat2gray(output_s) * 255);
end