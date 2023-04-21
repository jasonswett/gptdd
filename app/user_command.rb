# app/user_command.rb

require_relative 'gptdd'

class UserCommand
  def initialize(content)
    @content = content
  end

  def exit?
    @content == "exit\n"
  end
end

loop do
  user_command = UserCommand.new($stdin.gets)
  break if user_command.exit?
end
