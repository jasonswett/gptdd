# app/main.rb

require_relative 'user_file'

loop do
  lines = []

  while (line = $stdin.gets) != "\n"
    lines << line
  end

  user_file = UserFile.new(lines.join)
  user_file.save!
  puts "#{user_file} saved"
  puts
end
