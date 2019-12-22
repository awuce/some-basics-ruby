require_relative '../rabbits'

describe 'RabbitsFarm' do
  describe '#farming' do
    context "check after negative month" do
      subject(:p) { RabbitsFarm.new }
      it { expect(p.farming(0)).to eq 1 }
    end

    context "check after 0 month" do
      subject(:p) { RabbitsFarm.new }
      it { expect(p.farming(0)).to eq 1 }
    end

    context "check after 1 month" do
      subject(:p) { RabbitsFarm.new }
      it { expect(p.farming(1)).to eq 1 }
    end

    context "check after 10 month" do
      subject(:p) { RabbitsFarm.new }
      it { expect(p.farming(10)).to eq 89 }
    end
  end
end
