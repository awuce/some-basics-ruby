require_relative '../degrees'

describe Degrees do
  describe '#convert' do
    context "when C convert K" do
      subject(:p) { Degrees.new }
      it { expect(p.convert(100, "c", "k").round(2)).to eq 373.15 }
    end

    context "when C convert F" do
      subject(:p) { Degrees.new }
      it { expect(p.convert(-50.5, "c", "f").round(2)).to eq -58.90 }
    end

    context "when F convert K" do
      subject(:p) { Degrees.new }
      it { expect(p.convert(-40, "f", "k").round(2)).to eq 233.15 }
    end
  end
end
