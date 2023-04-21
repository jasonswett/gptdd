# spec/gptdd_spec.rb

require 'rspec'
require_relative '../app/user_command'

describe UserCommand do
  context "file contents were given" do
    user_command = described_class.new(%(# app/foo.rb

puts "foo"))

    user_command.execute
  end
end
