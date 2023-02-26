function result = recursive_determinant(input_matrix)
result = 0;
matrix_size = length(input_matrix(1,:));
if matrix_size == 1
    result = input_matrix(1,1);
    return
end
for i = 1:matrix_size
    matrix_to_send = input_matrix(:,2:end);
    matrix_to_send(i, :) = [];
    result = result + input_matrix(i, 1) * recursive_determinant(matrix_to_send) * (-1) ^ (i - 1);
end
end