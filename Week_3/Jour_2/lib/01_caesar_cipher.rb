def one_letter(letter, i=1)
    ascii_ord = letter.ord
    final_letter = []
    if 32 < ascii_ord && ascii_ord < 48 #de ! à /
        if (ascii_ord+i) > 47
            final_letter = (ascii_ord+i-15)
        else
            final_letter = (ascii_ord+i)
        end
    elsif 47 < ascii_ord && ascii_ord < 58 # de 0 à 9
        if (ascii_ord+i) > 57
            final_letter = (ascii_ord+i-10)
        else
            final_letter = (ascii_ord+i)
        end
    elsif 57 < ascii_ord && ascii_ord < 64  # de : à @
        if (ascii_ord+i) > 64
            final_letter = (ascii_ord+i-7)
        else
            final_letter = (ascii_ord+i)
        end
    elsif 64 < ascii_ord && ascii_ord < 91 # de A à Z
        if (ascii_ord+i) > 90
            final_letter = (ascii_ord+i-26)
        else
            final_letter = (ascii_ord+i)
        end
    elsif 91 <= ascii_ord && ascii_ord <= 96 # de [ à '
        if (ascii_ord+i) >91
            final_letter = (ascii_ord+i-5)
        else
            final_letter = (ascii_ord+i)
        end
    elsif 97 <= ascii_ord && ascii_ord <= 122 # de a à z
        if (ascii_ord+i) > 122
            final_letter = (ascii_ord+i-26)
        else
            final_letter = (ascii_ord+i)
        end
    elsif 122 <= ascii_ord && ascii_ord <= 126 # de { à ~
        if (ascii_ord+i) > 126
            final_letter = (ascii_ord+i-4)
        else
            final_letter = (ascii_ord+i)
        end
    else ascii_ord == 32 # space
        final_letter = ascii_ord
    end
return final_letter.chr
end

def more_than_one(word, i)
    final_word = []
    ascii_word = word.chars
    0..(ascii_word.length).times do |shift|
        ascii_letter = ascii_word[shift]
        final_word << one_letter(ascii_letter, i)
    end
    return final_word.join
end

