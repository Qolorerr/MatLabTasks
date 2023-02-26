function result = symbol_count(input_str)
result = cell(0,2);
for i = 1:length(input_str)
    current_symbol = input_str(i);
    index = find(strcmp(result(:, 1)', current_symbol));

    if isempty(index)
        result(end + 1,:) = {current_symbol, 1};
    else
        result{index,2} = result{index,2} + 1;
    end
end
end