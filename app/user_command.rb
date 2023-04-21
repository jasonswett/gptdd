# app/user_command.rb

require_relative 'gptdd'

class UserCommand
  def initialize(content)
    @content = content
  end

  def execute
  end

  def exit?
    @content == "exit\n"
  end
end
