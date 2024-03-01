function encryptedText = encryptSubstitution(plainText)
    plainText = upper(plainText);
    
    alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    key = alphabet(randperm(26));
    encryptedText = plainText;
    
    for i = 1:length(plainText)
        if isletter(plainText(i))
            index = find(alphabet == plainText(i));
            encryptedText(i) = key(index);
        end
    end
    disp(key)
end



