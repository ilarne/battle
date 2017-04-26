require 'player'

describe Player do
  subject(:player) { described_class.new("Bob") }
  let(:game) { double :game, attack: (player.health -= 10) }

  describe '#name' do
    it 'returns the correct name' do
      expect(player.name).to eq "Bob"
    end
  end

  describe '#health' do
    it 'reduces health by 10' do
      game.attack
    expect(player.health).to eq 20
  end
 end
end
