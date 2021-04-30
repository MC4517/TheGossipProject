class View

    def create_gossip
        puts "Quel est ton nom ?"
        author = gets.chomp
        puts "Raconte ton gossip ?"
        content = gets.chomp
        return params = {author: author, content: content,}
    end

    def index_gossips(all_gossips)
        i = 1 
        all_gossips.each do |gossip|
            puts "#{i}. #{gossip.content} #{gossip.author}  "
            i += 1
        end
        
    end
    def delete_gossips(gossips)
        i = 0

        puts ""
        puts "------------- "
        puts ""

        gossips.each do |gossip|
            i += 1
            puts "#gossip #{i} >> " + gossip.author + " : " + gossip.content 
            puts ""
        end

        puts ""
        puts "------------- "
        puts ""

        puts "Donne-moi le numéro du gossip à supprimer"
        puts ""
        print "> "

        num = gets.chomp.to_i 
        num -= 1
        gossips.delete_at(num)

        return gossips
end
end