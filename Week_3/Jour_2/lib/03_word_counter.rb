def word_counter(string, dictionnary)
    string = string.downcase
    word_c = Hash.new
    dictionnary.each do |word|
        unless string.scan(/(?=#{word})/).count == 0
        word_c[word] = string.scan(/(?=#{word})/).count
        end
    end
    return word_c
end

# def shakespear
#     s_word = File.read(shakespear.txt).downcase.split
#     print s_word
# end

# dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

# def shakespear_count(s_word, dictionnary)
#     word_c = Hash.new
#     s_word.each do |word|
#         print word
#         word_c << word_counter(word, dictionnary)
#     end
#     return word_c
# end


# shakespear#(s_word, dictionnary)
# puts word_c