class Codebreaker
  class Game
    attr_reader :output

    def initialize(output)
      @output = output
    end

    def start(secret_number)
      @secret_number = secret_number

      output.puts "Welcome to Codebreaker"
      output.puts "Enter guess:"
    end

    def guess(input)
      if input.length < 4 || input.length > 4
        output.puts "Try guessing a number with four digits"
      end

      result = []

	    for i in 0..3
        if input[i] == @secret_number[i]
          result << '+'
        elsif @secret_number.include? input[i]
          result << '-'
        end
      end
      output.puts result.join
    end
  end
end
