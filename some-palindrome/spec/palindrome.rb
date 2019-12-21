# require 'rspec/autorun'
require_relative '../palindrome'

describe 'Palindrome' do
  describe '#Palindrome?' do
    context "check the correct option" do
      subject(:p) { Palindrome.new }
      it { expect(p.palindrome?('Repaper')).to eq true }
      it { expect(p.palindrome?('Repaper')).to eq true }
      it { expect(p.palindrome?('Denim axes examined')).to eq true }
      it { expect(p.palindrome?(' ')).to eq true }
    end

    context "check the wrong option" do
      subject(:p) { Palindrome.new }
      it { expect(p.palindrome?('Palindrome')).to eq false }
    end
  end
end
