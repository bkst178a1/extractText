function [result] = extract(image)
    redData = image(:,:,1);
    nCounter = 17;
    nCounterBits = nCounter * 7;
    binData = zeros(1, nCounterBits);
    for i = 1:nCounterBits
        binData(i) = bitget(redData(i), 1);
    end
    counter = '';
    for i = 1:nCounter
        ind = 1 + (i - 1) * 7;
        counter = strcat(counter, extractSymbol(binData(ind:ind + 6)));
    end
    nSymbs = length(counter);
    nSymbBits = nSymbs * 7;
    binData = zeros(1,nSymbBits);
    for i = 1:nCounterBits
        binData(i) = bitget(redData(nCounterBits + i), 1);
    end
    result = '';
    for i = 1:nCounter
        ind = 1+(i-1)*7;
        counter = strcat(counter, extractSymbol(binData(ind:ind+6)));
    end
    result = counter;
end