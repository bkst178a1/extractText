function [result] = addText(image, text)
    redData = image(:,:,1);
    text = strcat(num2str(length(text), '%0.3f'), text);
    binData = dec2bin(text)';
    encodeData = str2num(binData(:));
    for i = 1:length(encodeData)
        redData(i) = bitset(redData(i), 1, encodeData(i));
    end
    result = image;
    result(:,:,1) = redData;
end