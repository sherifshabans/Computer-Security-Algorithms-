function pt = ColTransDe(ct, k)
c = length(k);
r = ceil(length(ct) / c);

% Create matrix from ciphertext
w = 0;
for i = 1:r
    for j = 1:c
        w = w + 1;
        b(i, j) = ct(w);
    end
end

% Rearrange matrix columns according to key
b(:, k) = b;

% Convert matrix to plaintext
pt = b(:)';
end


