class Game
  attr_reader :player_1, :player_2, :looser

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @turn = 1
    @looser = nil
  end

  def self.create(player1, player2)
  @game = Game.new(player1, player2)
  end

  def self.instance
    return @game
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

  def game_over?
    player_lost
    !!@looser  
  end

  private

  attr_accessor :turn

  def player_lost
    @looser = @player_1 if @player_1.hit_points == 0
    @looser = @player_2 if @player_2.hit_points == 0
  end

end
