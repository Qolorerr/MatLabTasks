r = 10;

x = -r:r;
y = -r:r;

for i = 1:(r * 2 + 1)
    for j = 1:(r * 2 + 1)
        if x(i) ^ 2 + y(j) ^ 2 > r ^ 2
            z(i, j) = 0;
            continue
        end
        z(i, j) = sqrt(r ^ 2 - x(i) ^ 2 - y(j) ^ 2);
    end
end
surf(z);