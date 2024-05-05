def caesar_cipher(str, num)
    #int value of A = 65
    #int value of Z = 90
    #int value of a = 97
    #int value of z = 122

    str.codepoints.map do |value|
        if (value >= 65 && value <=90)
            value = (value - 65 + num) % 26 + 65
        elsif value >=97 && value <=122
            value = (value - 97 + num) % 26 + 97
        end
        value.chr
    end.join

end