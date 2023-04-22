# spec/user_file_spec.rb

require 'rspec'
require_relative '../app/user_file'

describe UserFile do
  context "file contents were given" do
    it "saves the file with the correct contents" do
      user_command = described_class.new(%(# app/foo.rb

puts "foo"))

      user_command.save!
      # You should add an expectation here to check if the file has been saved correctly
    end
  end

  context "filename is missing" do
    it "raises a custom exception" do
      user_command = described_class.new(%(puts "missing filename"))

      expect { user_command.save! }.to raise_error(UserFile::FilenameMissingError, "Filename is missing in the command")
    end
  end
end
