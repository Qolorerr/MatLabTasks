function result = count_on_left(input_vector)
result = zeros(1, length(input_vector));
for i = 2:length(input_vector)
    for j = 1:(i - 1)
        if input_vector(j) < input_vector(i)
            result(i) = result(i) + 1;
        end
    end
end
end