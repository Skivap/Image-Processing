function output_s = addSinNoise(input_s, A, u0, v0)
    [M, N] = size(input_s);
    x = 0:M-1;
    y = (0:N-1)';
    noise = A * sin(2 * pi * (u0 * x / M + v0 * y / N));
    output_s = input_s + noise;
end