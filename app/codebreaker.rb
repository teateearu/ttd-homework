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
      if input.length != 4
        return output.puts "Try guessing a number with four digits"
      end

      result = ''
      @guesses_array = []

      for i in 0..3
        game_number = @secret_number[i]
        player_guess = input [i]
        if player_guess == game_number
          result += '+'
          @guesses_array.push(player_guess)
        elsif not_already_matched(game_number, player_guess)
          result += '-'
          @guesses_array.push(player_guess)
        end
      end
      output.puts result.split('').sort.join
    end
    def not_already_matched(game_number, player_guess)
      @secret_number.include? player_guess unless @guesses_array.include? player_guess
    end
  end
end
