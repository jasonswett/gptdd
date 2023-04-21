class FileWithFilename
  def initialize(content)
    @content = content
  end

  def path
    first_line = @content.lines[0]
    match_data = first_line.match(/^#\s(.+)$/)
    match_data[1].strip
  end
end
