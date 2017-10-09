class MathGame

    attr_reader :players :questions :turns

    def initialize
        @players = [
            Player.new('Player 1'),
            Player.new('Player 2')
        ]
        @current_player = 0
        @current_turn = Turn.new(current_player)
    end

    def current_player
        @players[@current_player]
    end

    def start

    end
