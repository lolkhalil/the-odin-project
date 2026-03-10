# Helper Function
def check_upcase(letter)
    if (letter.upcase() == letter)
        return true
    end

    return false
end

def caesar_cipher(input_string, shift)
    alphabet = "abcdefghijklmnopqrstuvwxyz".split("")
    new_string = ""

    input_string.each_char do |string|
        temp_index = alphabet.index { |letter| letter.casecmp?(string) }

        # Punctuation Check
        if (temp_index == nil)
            new_string << string
            next
        end

        shifted_index = temp_index + shift
        letter = ""
        if (shifted_index > alphabet.length)
            letter = alphabet[shifted_index - alphabet.length]
        else
            letter = alphabet[shifted_index]
        end

        new_string += check_upcase(string) ? letter.upcase() : letter
    end

    return new_string
end

puts caesar_cipher("What a string!", 5)