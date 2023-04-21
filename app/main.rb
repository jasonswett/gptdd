# app/main.rb

require_relative 'user_file'

loop do
  puts "Please paste your file and type 'eof' on a new line when done or 'exit' to quit:"
  lines = []

  while (line = $stdin.gets)
    break if line == "exit\n"

    if line == "eof\n"
      user_file = UserFile.new(lines.join)
      user_file.save!
      puts "#{user_file} saved"
      puts
      break
    end

    lines << line
  end

  break if line == "exit\n"
end

puts "Exiting program."

