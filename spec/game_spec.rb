require 'game'

describe Game do
  subject(:game) { described_class.new(:player1, :player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  it { is_expected.to respond_to :attack }

  it 'assigns players correctly' do
    expect(game.current_turn).to eq :player1
  end
end
