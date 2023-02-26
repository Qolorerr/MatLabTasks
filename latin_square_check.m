function result = latin_square_check(input_matrix)
matrix_size = length(input_matrix(1,:));
default_line = 1:matrix_size;
result = true;
for i = 1:matrix_size
    % Check horizontal
    sorted_line_check = sort(input_matrix(i,:)) == default_line;
    result = result & ((sorted_line_check * sorted_line_check') == matrix_size);

    % Check vertical
    sorted_line_check = sort(input_matrix(:,i)') == default_line;
    result = result & ((sorted_line_check * sorted_line_check') == matrix_size);
end