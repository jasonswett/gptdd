# app/user_file.rb

require_relative 'gptdd'

class UserFile
  class FilenameMissingError < StandardError; end

  def initialize(content, file_handler: File)
    @content = content
    @file_handler = file_handler
  end

  def save!
    file_path = path
    raise FilenameMissingError, "Filename is missing in the command" if file_path.nil?

    @file_handler.write(file_path, @content)
  end

  def to_s
    path
  end

  private

  def path
    first_line = @content.lines[0]
    match_data = first_line.match(/^#\s(.+)$/)
    match_data[1].strip unless match_data.nil?
  end
end
