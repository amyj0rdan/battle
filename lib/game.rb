class Game

  attr_reader :current_player

  def self.create_game(player1, player2)
    @game = self.new(player1, player2)
  end

  def self.get
    @game
  end

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    @current_player = opponent_of(current_player)
  end

  def other_player
    opponent_of(current_player)
  end

  private

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

end
