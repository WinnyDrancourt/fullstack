class View
  def create_gossip
    puts "What's your name ?"
    print "> "
    author = gets.chomp

    puts "What's you f**king Gossip ?"
    print "> "
    content = gets.chomp
    return params = {content: content, author: author}
  end

  def index_gossips(all_gossip)
    all_gossip.each_with_index do |gossip, index|
      puts "[#{index+1}] - #{gossip.author} : #{gossip.content}"
    end
  end

  def delete_gossip
    puts "Whats gossip you want delete ? "
    index = gets.chomp.to_i
    return index
  end

end