# app/gptdd.rb

class GPTDD
  def process_input(input)
    return :exit if input.strip == 'exit'

    update_file(input)
    :continue
  end

  def update_file(content)
    file_path = extract_file_path(content)
    File.write(file_path, content)
  end

  private

  def extract_file_path(content)
    first_line = content.lines[0]
    match_data = first_line.match(/^#\s(.+)$/)
    match_data[1].strip
  end
end
