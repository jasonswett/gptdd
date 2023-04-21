# spec/gptdd_spec.rb

require 'rspec'
require_relative '../app/gptdd'

describe GPTDD do
  describe '#update_file' do
    it 'updates the file with the provided content' do
      # Prepare test file and content
      test_directory = 'test'
      test_file_path = "#{test_directory}/temp_test_file.rb"
      initial_content = "# #{test_file_path}\ninitial content"
      updated_content = "# #{test_file_path}\nupdated content"

      # Ensure the test directory exists
      Dir.mkdir(test_directory) unless Dir.exist?(test_directory)

      # Create test file with initial content
      File.write(test_file_path, initial_content)

      # Update the file with new content
      gptdd = GPTDD.new
      gptdd.update_file(updated_content)

      # Check if the file has been updated
      expect(File.read(test_file_path)).to eq(updated_content)

      # Clean up - delete the test file and test directory
      File.delete(test_file_path)
      Dir.rmdir(test_directory)
    end
  end
end
