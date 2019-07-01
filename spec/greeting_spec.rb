require 'rspec'
require_relative '../lib/greeting'

RSpec.describe Greeting do
  describe "#greet" do
    it "can greet a friend" do
      expect(Greeting.greet("Bob")).to eq "Hello, Bob."
    end
  end
end
