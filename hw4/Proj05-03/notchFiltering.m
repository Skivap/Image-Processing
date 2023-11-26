function [output_f, Notch] = notchFiltering(input_f, D0, u0, v0)
    [M, N] = size(input_f);
    u = 1:M;
    v = 1:N;
    D1 = ((u - M/2 - u0).^2 + (v' - N/2 - v0).^2).^(1/2);
    D2 = ((u - M/2 + u0).^2 + (v' - N/2 + v0).^2).^(1/2);
    D1 = D1 > D0;
    D2 = D2 > D0;
    Notch = D1 & D2;
    output_f = input_f .* Notch;
end
