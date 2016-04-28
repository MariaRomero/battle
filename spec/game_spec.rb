require 'game'

describe Game do
  subject(:game) { Game.new(player_1, player_2) }
  let(:player_1) { spy(:player_1) }
  let(:player_2) { spy(:player_2) }

    it 'can attack a player' do
      game.attack(player_2)
      expect(player_2).to have_received(:receive_damage)
    end
end
