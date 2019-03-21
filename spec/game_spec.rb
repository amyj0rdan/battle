require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  it 'player 2 receives damage' do
    expect(player_2).to receive(:receive_damage)
    game.attack(player_2)
  end

end
