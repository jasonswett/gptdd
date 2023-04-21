# app/main.rb

require_relative 'user_file'

loop do
  puts "Please paste your file and type 'eof' on a new line when done:"
  lines = []

  while (line = $stdin.gets) != "eof\n"
    lines << line
  end

  user_file = UserFile.new(lines.join)
  user_file.save!
  puts "#{user_file} saved"
  puts
end
