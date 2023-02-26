function result = strange_sort(input_vector)
just_sort = sort(input_vector, 'descend');
vector_size = length(input_vector);
result = zeros(1, vector_size);
for i = 1:vector_size
    if mod(i, 2) == 0
        result(i) = just_sort(vector_size - i / 2 + 1);
    else
        result(i) = just_sort((i - 1) / 2 + 1);
    end
end
end