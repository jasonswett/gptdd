# app/user_file.rb

require_relative 'gptdd'

class UserFile
  def initialize(content)
    @content = content
  end

  def save!
    File.write(path, @content)
  end

  def to_s
    path
  end

  private

  def path
    first_line = @content.lines[0]
    match_data = first_line.match(/^#\s(.+)$/)
    match_data[1].strip
  end
end
