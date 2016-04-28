require 'game'

describe Game do
  subject(:game) { Game.new(player_1, player_2) }
  let(:player_1) { spy(:player_1) }
  let(:player_2) { spy(:player_2) }

    it 'attack player 2 the first turn' do
      game.attack
      expect(player_2).to have_received(:receive_damage)
    end

    it 'attack player 1 the second turn' do
      game.attack
      game.attack 
      expect(player_1).to have_received(:receive_damage)
    end

end
