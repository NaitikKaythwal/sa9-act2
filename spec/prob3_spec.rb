# spec/prob3_spec.rb
require 'prob3'

RSpec.describe StringWrapper do
  let(:stringwrapper) { StringWrapper.new("Hello!") }
  describe "#reverse" do
    it "reverses the string" do
      reversed_str = stringwrapper.reverse
      expect(reversed_str).to eq("!olleH")
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      upcased_str = stringwrapper.upcase
      expect(upcased_str).to eq("HELLO!")
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      downcased_str = stringwrapper.downcase
      expect(downcased_str).to eq("hello!")
    end
  end
end
