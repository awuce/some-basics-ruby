require_relative '../stat'

describe 'Application' do
  describe '#stat_max' do
    context "when max data" do
      subject(:p) { Stat.new([1, 2, 10]) }
      it { expect(p.stat_max).to eq 10 }
    end
  end

  describe '#stat_min' do
    context "when min data" do
      subject(:p) { Stat.new([1, 2, 10]) }
      it { expect( p.stat_min).to eq 1 }
    end
  end

  describe '#stat_average' do
    context "when average data" do
      subject(:p) { Stat.new([1, 2, 10]) }
      it { expect(p.stat_average).to eq 4 }
    end
  end

  describe '#stat_dispersion' do
    context "when dispersion data" do
      subject(:p) { Stat.new([1, 2, 10]) }
      it { expect(p.stat_dispersion.round(1)).to eq 1.4 }
    end
  end
end
