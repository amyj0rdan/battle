require 'game'

describe Game do

  let(:player_1) { double :player1 }
  let(:player_2) { double :player2 }
  subject(:game) { described_class.new(player_1, player_2) }

  it 'player 2 receives damage' do
    expect(player_2).to receive(:receive_damage)
    game.attack(player_2)
  end

  it 'returns player 1' do
    expect(game.player_1).to eq(player_1)
  end

  it 'returns player 2' do
    expect(game.player_2).to eq(player_2)
  end

  describe '#turn' do
    it 'starts as player 1' do
      expect(game.turn).to eq player_1
    end
  end

  describe '#switch_turns' do
    it 'switches the turn' do
      game.switch_turn
      expect(game.turn).to eq player_2
    end
  end
end
