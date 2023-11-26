function resizedImage = resizeImage_bilinear(originalImage, scalingFactor)
    [rw, cl] = size(originalImage);
    row = round(rw * scalingFactor);
    col = round(cl * scalingFactor);
    
    resizedImage = zeros(row, col, "uint8");
    for i=1:row
        for j=1:col
            x = double((i-1) / (row-1) * (rw-1) + 1);
            y = double((j-1) / (col-1) * (cl-1) + 1);

            val1 = originalImage(floor(x), floor(y)) * (y - floor(y)) +  originalImage(floor(x), ceil(y)) * (ceil(y) - y);
            val2 = originalImage(ceil(x), floor(y)) * (y - floor(y)) +  originalImage(ceil(x), ceil(y)) * (ceil(y) - y);
            resizedImage(i, j) = val1 * (x - floor(x)) + val2 * (ceil(x) - x);
        end
    end
end