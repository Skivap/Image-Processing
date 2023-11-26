function output = myDFT2(input)
    [N, M] = size(input);
    u = 0:N-1;
    v = 0:M-1;
    
    power1 = exp(-2 * pi * 1i * (u' * u) / N);
    power2 = exp(-2 * pi * 1i * (v' * v) / M);

    output = power1 * input * power2;
end