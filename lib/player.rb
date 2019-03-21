class Player
  DEFAULT_HP = 50

  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @hp = hp
    @name = name
  end

  def receive_damage
    @hp -= 10
  end

  def attack(player)
    player.receive_damage
  end
end
