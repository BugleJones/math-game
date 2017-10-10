class Turn

    attr_accessor :player, :question
    
      def initialize(player, question)
        @player = player
        @question = question
      end

end