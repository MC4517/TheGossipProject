class Gossip
    
    attr_reader :author, :content
    def initialize(author, content)
        @content = content
        @author = author
    end

    def save
        CSV.open('db/gossip.csv', 'a+') do |row|
            row << [@author, @content]
           end
    end

    def self.all
        all_gossips = []

        CSV.foreach('db/gossip.csv') do |row|
          gossip_provisoire = Gossip.new(row[0], row[1])  
            all_gossips << gossip_provisoire
        end

        return all_gossips
    end
    
    def self.delete
        CSV.open("db/gossip.csv", "w") {|csv| csv.truncate(0)}
    end
end


    