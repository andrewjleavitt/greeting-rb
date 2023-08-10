require 'rspec'
require_relative '../lib/greeting'

RSpec.describe Greeting do
  describe "#greet" do
    it "can greet a friend" do
      expect(subject.greet("Bob")).to eq "Hello, Bob."
    end

    it "can greet a nameless friend" do
      expect(subject.greet).to eq "Hello, my friend."
    end

    it "can shout at a friend" do
      expect(subject.greet("JERRY")).to eq "HELLO JERRY!"
    end

    it "can greet two friends" do
      expect(subject.greet(["Jill", "Jane"])).to eq "Hello, Jill and Jane."
    end

    it "can greet more than two friends" do
      expect(subject.greet(["Amy", "Brian", "Charlotte"])).to eq "Hello, Amy, Brian, and Charlotte."
    end
  end
end
