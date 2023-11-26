function [output_f, H] = addMotionBlur(input_f, T, a, b)
    [M, N] = size(input_f);
    u = (0:M-1) - M/2;
    v = (0:N-1)' - N/2;

    amplitude = T ./ (pi * (a * u + v * b));
    sinf = sin(pi * (a * u + v * b));
    expf = exp(-1j * pi * (a * u + v * b));

    H = amplitude .* sinf .* expf;
    H(isnan(H)) = 1;
    output_f = input_f .* H;
end