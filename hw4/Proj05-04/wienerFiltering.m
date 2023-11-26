function output_f = wienerFiltering(input_f, H, K)
    F = (1 ./ H) .* (abs(H).^2 ./ (abs(H).^2 + K));
    output_f = input_f .* F;
end