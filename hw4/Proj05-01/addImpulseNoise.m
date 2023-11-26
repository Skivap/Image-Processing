function output_s = addImpulseNoise (input_s, Ps, Pp)
    [row, col] = size(input_s);
    r = rand(row, col);

    output_s = input_s;
    output_s(1 - r < Pp) = 0;
    output_s(r < Ps) = 255;
end