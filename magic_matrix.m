function result = magic_matrix(input_size)
result = zeros(input_size);
result(1, 1) = 1;
for i = 2:input_size
    result(1, i) = result(1, i - 1) + (i - 1);
for i = 2:input_size
    for j = 1:(input_size - i + 1)
        result(i, j) = result(i - 1, j + 1) + 1;
    end
end
for i = 2:input_size
    result(i, input_size) = result(input_size, i - 1) + 1;
    for j = 1:(input_size - i)
        result(i + j, input_size - j) = result(i + j - 1, input_size - j + 1) + 1;
    end
end
end