# app/gptdd.rb
require_relative 'user_file'

class GPTDD
  def process_input(input)
    return :exit if input.strip == 'exit'

    update_file(input)
    :continue
  end

  def update_file(content)
    user_file = UserFile.new(content)
    user_file.save!
  end
end
