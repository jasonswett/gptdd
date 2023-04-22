# spec/user_file_spec.rb

require 'rspec'
require_relative '../app/user_file'

describe UserFile do
  let(:mock_file_handler) { double("FileHandler") }

  context "file contents were given" do
    it "saves the file with the correct contents" do
      user_command = described_class.new(%(# app/foo.rb

puts "foo"), file_handler: mock_file_handler)

      expect(mock_file_handler).to receive(:write).with("app/foo.rb", %(# app/foo.rb

puts "foo"))
      user_command.save!
    end
  end

  context "filename is missing" do
    it "raises a custom exception" do
      user_command = described_class.new(%(puts "missing filename"), file_handler: mock_file_handler)

      expect { user_command.save! }.to raise_error(UserFile::FilenameMissingError, "Filename is missing in the command")
    end
  end
end
