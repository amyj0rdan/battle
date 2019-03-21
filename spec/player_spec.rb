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

  it 'player 2 receives damage' do
    expect(amy).to receive(:receive_damage)
    arthur.attack(amy)
  end

  it 'receive_damage and reduces points by 10' do
    expect{amy.receive_damage}.to change{amy.hp}.by(-10)
  end
end
