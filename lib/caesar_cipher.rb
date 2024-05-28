# frozen_string_literal: true

def caesar_cipher(str, num)
  # int values of uppercase alphabet A..Z = 65..90
  # int values of lowercase alphabet a..z = 97..122
  str.codepoints.map do |value|
    if value >= 65 && value <= 90
      value = (value - 65 + num) % 26 + 65
    elsif value >= 97 && value <= 122
      value = (value - 97 + num) % 26 + 97
    end
    value.chr
  end.join
end
