class Question
    
    attr_accessor :num_one, :answer, :num_two

    def initialize
        @num_one = rand(1..20)
        @num_two = rand(1..20)
        @answer = num_one + num_two
    end

    def get_question
        "What is #{num_one} plus #{num_two}"
    end

    def solution?
        response = STDIN.gets.chomp().to_i
        if response == @answer
            true
        else
            false
        end
    end
end