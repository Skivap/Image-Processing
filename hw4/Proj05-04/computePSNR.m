function psnr = computePSNR(input1_s, input2_s)
    [M, N] = size(input1_s);
    MSE = sum(sum( ((input1_s) - (input2_s)).^2 )) / M * N;
    psnr = abs(10 * log10(1 / MSE));
end