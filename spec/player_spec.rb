require 'player'

describe Player do

  subject(:amy) { described_class.new("Amy") }
  subject(:arthur) { described_class.new("Arthur") }

  it 'returns its name' do
    expect(amy.name).to eq "Amy"
  end

  it 'returns health points' do
    expect(amy.hp).to eq described_class::DEFAULT_HP
  end

  it 'receive_damage and reduces points by random number' do
    allow(Kernel).to receive(:rand).and_return(7)
    expect{amy.receive_damage}.to change{amy.hp}.by(-7)
  end
end
