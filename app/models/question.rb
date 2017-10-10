class Question
    
    attr_accessor :num_one, :answer, :num_two

    def initialize
        @num_one = rand(1..20)
        @num_two = rand(1..20)
        @answer = num_one + num_two
    end

    def get_question
        puts "What is #{num_one} plus #{num_two}"
    end

    def solution (response)
        if response.to_i == answer
            puts "Correct! The answer is #{answer}"
        else
            puts "Incorrect, the answer is #{answer}"
        end
    end

end

p q1 = Question.new

p q1.get_question

p q1.solution(gets.chomp)