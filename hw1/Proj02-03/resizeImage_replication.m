function resizedImage = resizeImage_replication(originalImage, scalingFactor)
    [rw, cl] = size(originalImage);
    row = ceil(rw * scalingFactor);
    col = ceil(cl * scalingFactor);
    
    resizedImage = zeros(row, col, "uint8");
    for i=1:row
        for j=1:col
            resizedImage(i, j) = originalImage(round((i-1) / (row-1) * (rw-1) + 1), round((j-1) / (col-1) * (cl-1) + 1));
        end
    end
end