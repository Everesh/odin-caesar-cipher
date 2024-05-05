def caesar_cipher(str, num)
    #int value of A = 65
    #int value of Z = 90
    #int value of a = 97
    #int value of z = 122

    str.codepoints.map do |value|
        if (value >= 65 && value <=90)
            if value + num > 90
                value += num - 26
            else
                value += num
            end
        elsif value >=97 && value <=122
            if value + num > 122
                value += num - 26
            else
                value += num
            end
        end
        value.chr
    end.join

end