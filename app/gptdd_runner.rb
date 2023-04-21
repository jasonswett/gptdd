# app/gptdd_runner.rb

require_relative 'gptdd'

class GPTDDRunner
  def initialize(gptdd)
    @gptdd = gptdd
  end

  def run
    puts "Type 'exit' on a new line to exit the program."

    loop do
      # Prompt the user to paste file contents
      puts 'Please paste the contents of the file you want to update, then press Enter:'
      file_contents = []
      input_line = nil

      while (input_line = $stdin.gets) != "\n"
        break if input_line.chomp == 'exit'
        file_contents << input_line
      end

      # Exit the loop if the user typed 'exit'
      break if input_line.chomp == 'exit'

      # Process the input
      @gptdd.process_input(file_contents.join)
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  gptdd = GPTDD.new
  runner = GPTDDRunner.new(gptdd)
  runner.run
end
