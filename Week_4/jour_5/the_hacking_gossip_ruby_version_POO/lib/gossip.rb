class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def save
    CSV.open("db/gossip.csv", "a") do |csv|
      csv << [@author, @content]
    end
  end

  def self.all
    all_gossip = []
    CSV.foreach("db/gossip.csv") do |row|
      prov = Gossip.new(row[0], row[1])
      all_gossip << prov
    end
    return all_gossip
  end

  def self.delete_gossip(index)
    lines = File.readlines('db/gossip.csv')
    lines.delete_at(index-1)
    new_lines = lines

    File.open('db/gossip.csv', 'w') {|file| file.truncate(0) }

    new_lines.each do |line|
      File.open('db/gossip.csv', 'a') { |f| f.write line }
    end

  end

end