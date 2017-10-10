require './player'
require './question'
require './turn'

class Game

    attr_reader :players

    def initialize
        @players = [
            p1 = Player.new('Player 1'),
            p2 = Player.new('Player 2')
        ]
        @current_player = 0
    end

    def current_player
        @players[@current_player]
    end

    def turn_sequence
        while (players[0].lives > 0 && players[1].lives > 0)
            puts '---- NEW TURN, GO ----'
            new_question = Question.new
            new_turn = Turn.new(current_player, new_question)
            new_turn
            p "#{current_player.name}: #{new_question.get_question}"
            if new_question.solution?
                current_player.get_point
                puts "Correct! The answer is #{new_question.answer}, you get a point!"
            else
                current_player.lose_life
                puts "Incorrect, the answer is #{new_question.answer}, you lose a life"
            end
            p "P1: #{players[0].score}/#{players[0].lives} vs. P2: #{players[1].score}/#{players[1].lives}"
            swap_player
        end
        p "---- GAME OVER ----"
    end

    def start
        puts 'Hello Player 1, Player 2, this is a game of wits and danger and you start with a generous three lives'
        puts 'You will be asked a random math question and expected to get it right'
        puts 'But if not - you lose a life, plain and simple'
        puts 'Here comes the first question, Player 1'
        turn_sequence
    end

    def swap_player
        if @current_player == 1
            @current_player = 0
        else
            @current_player = 1
        end
    end
end

go = Game.new
go.start






