function [symb] = extractSymbol(data)
    symbol = num2str(data);
    symbol(isspace(symbol)) = '';
    symb = char(bin2dec(symbol));
end