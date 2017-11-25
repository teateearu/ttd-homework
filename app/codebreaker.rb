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

      for i in 0..3
        if input.byteslice(i) == @secret_number.byteslice(i)
          output.puts '+'
        elsif @secret_number.include? input.byteslice(i)
          output.puts '-'
        end
      end
    end
  end
end
