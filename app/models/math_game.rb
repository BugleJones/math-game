class MathGame

    attr_reader :players, :questions, :turns

    def initialize
        @players = [
            Player.new('Player 1'),
            Player.new('Player 2')
        ]
        @current_player = 0
        @current_turn = Turn.new(current_player, Question.new)
    end

    def current_player
        @players[@current_player]
    end

    def start_turn
        puts "---- NEW TURN, SWITCH ----"
        new_question = Question.new
        new_question.get_question
        new_question.solution(gets.chomp)
    end

    def end_turn
    end

    def start
        puts "Hello Player 1, Player 2, this is a game of wits and danger and you start with a generous three lives"
        puts "You will be asked a random(?) math question and expected to get it right"
        puts "But if no - you lose a life, plain and simple"
        puts "Here comes the first question, Player 1"
    end

    def game_over
    end

end

go = MathGame.new


