function decryptedText = decryptSubstitution(encryptedText, key)
    encryptedText = upper(encryptedText);
    key = upper(key);
    alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    decryptedText = encryptedText;
    
    for i = 1:length(encryptedText)
        if isletter(encryptedText(i))
            index = find(key == encryptedText(i));
            decryptedText(i) = alphabet(index);
        end
    end
end