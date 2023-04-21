# app/main.rb

require_relative 'user_file'

loop do
  puts "Please paste your file and press Ctrl+D when done:"
  lines = []

  while !(line = $stdin.gets).nil? && !$stdin.eof?
    lines << line
  end

  user_file = UserFile.new(lines.join)
  user_file.save!
  puts "#{user_file} saved"
  puts

  # Reset the input buffer
  $stdin.gets if $stdin.eof?
