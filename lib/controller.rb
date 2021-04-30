require_relative 'gossip'
require_relative 'view'

class Controller 
    
    def initialize
        @view = View.new
    end

    def create_gossip       
        params = @view.create_gossip
        gossip = Gossip.new(params.values[0], params.values[1])
        gossip.save
    end

    def index_gossips 
        gossips = Gossip.all 
        @view.index_gossips(gossips) 
      end

      def delete_potin
        all_gossips = Gossip.all
        Gossip.delete
        params  = @view.delete_gossips(all_gossips)
        params.each do |param|
            param.save
        end

    end
    
        #puts "Quel potin veux tu supprimer ? Tape le numéro du potin que tu veux supprimer."
        #choice = gets.chomp.to_i
        
       

      
end
    
