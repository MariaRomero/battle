class Game
  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = 1
  end

  def attack
    target_player.receive_damage
    self.turn +=1
  end

  def target_player
    return @player_2 if turn.odd?
    @player_1
  end

  def current_player
    return @player_2 if turn.even?
    @player_1
  end

  private

  attr_accessor :turn

end
