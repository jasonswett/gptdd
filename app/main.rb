require_relative 'user_file'

lines = []

while (line = $stdin.gets) != "\n"
  lines << line
end

UserFile.new(lines.join).save!
