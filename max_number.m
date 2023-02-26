function result = max_number(input_number)
index = 0;
digits = dec2base(input_number, 10) - '0';
digits_size = length(digits);
for i = 1:(digits_size - 1)
    if digits(i) < digits(i + 1)
        index = i;
        break
    end
end
if index == 0
    index = digits_size;
end
result = floor(input_number / (10 ^ (digits_size - index + 1))) * 10 ^ (digits_size - index);

result = result + mod(input_number, 10 ^ (digits_size - index));
end