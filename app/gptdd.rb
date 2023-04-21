# app/gptdd.rb

class GPTDD
  def update_file(content)
    file_path = extract_file_path(content)
    File.write(file_path, content)
  end

  private

  def extract_file_path(content)
    first_line = content.lines[0]
    match_data = first_line.match(/^#\s(.+)$/)
    match_data[1].strip
  end
end

# Create an instance of the GPTDD class
gptdd = GPTDD.new

puts "Type 'exit' on a new line and press Ctrl-D (or Cmd-D on Mac) to exit the program."

loop do
  # Prompt the user to paste file contents
  puts 'Please paste the contents of the file you want to update, then press Ctrl-D (or Cmd-D on Mac):'
  file_contents = $stdin.read

  # Exit the program if the user types 'exit'
  break if file_contents.strip == 'exit'

  # Update the file with the provided content
  gptdd.update_file(file_contents)
end
