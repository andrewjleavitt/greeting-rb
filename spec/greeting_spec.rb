require 'rspec'
require_relative '../lib/greeting'

RSpec.describe Greeting do
  describe "#greet" do
    it "says hello to an old friend" do
      expect(Greeting.new.greet).to eq "Hello, my friend."
    end
  end
end
