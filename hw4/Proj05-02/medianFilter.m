function output = medianFilter(input)
    [row, col] = size(input);

    output = input;
    
    for i=2:row-1
        for j = 2:col-1
            output(i, j) = median(input(i-1:i+1, j-1:j+1), "all");
        end
    end
end