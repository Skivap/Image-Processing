function output = myGHPF(D0,M,N)
    u = 1:M;
    v = 1:N;
    v = v';
    halfM = (M/2);
    halfN = (N/2);
    output = single(zeros(M, N));
    output(u, v) = (u - halfM).^2 + (v - halfN).^2;
    output = 1 - exp(-1 * output / (2 * D0 ^ 2));
end