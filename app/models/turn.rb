class Turn

    attr_accessor :player, :question

    def initialize
        @current_player = player;
        @current_question = question
    end

    def start_turn
        puts "---- NEW TURN, SWITCH ----"
        new_question = Question.new
        new_question.get_question
        if new_question.solution(gets.chomp)
            current_player.get_point
        else
            current_player.lose_life
        end
    end

    def end_turn

    end

end