# app/user_command.rb

require_relative 'gptdd'
require_relative '../app/file_with_filename'

class UserCommand
  def initialize(content)
    @content = content
  end

  def execute
    path = FileWithFilename.new(@content).path
    File.write(path, @content)
  end

  def exit?
    @content == "exit\n"
  end
end
