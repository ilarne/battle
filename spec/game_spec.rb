require 'game'

describe Game do
  subject(:game) { described_class.new(:player1, :player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  it { is_expected.to respond_to :attack }

  it 'assigns players correctly' do
    expect(game.current_turn).to eq :player1
  end

  # describe '#attack' do
  #   it 'reduces health by 10 HP' do
  #   # allow(:player2).to receive(:health) { 30 }
  #   # allow(:player2).to receive(:take_damage).and_return(20)
  #   game.attack(player2)
  #   expect(player2.health).to eq 20
  # end
# end

end
