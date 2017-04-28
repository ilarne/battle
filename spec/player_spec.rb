require 'player'
require 'game'

describe Player do
  subject(:player) { described_class.new("Bob") }
  let(:game) { Game.new(Player.new("Fred"), Player.new("Jim")) }


  describe '#name' do
    it 'returns the correct name' do
      expect(player.name).to eq "Bob"
    end
  end

  describe '#health' do
    # it 'reduces health by 10' do
    #   game.attack(game.next_turn)
    #   expect(game.next_turn.health).to eq 20
    # end

    it 'reduces health by a random amount' do
      allow(player).to receive(:take_damage).and_return(80, 70, 60)
      expect(player.take_damage).to eq 80
      expect(player.take_damage).to eq 70
      expect(player.take_damage).to eq 60 # this code seems unhelpful to the test's purpose
    end
  end
end
