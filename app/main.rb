require_relative 'user_command'

loop do
  user_command = UserCommand.new($stdin.gets)
  break if user_command.exit?
end
