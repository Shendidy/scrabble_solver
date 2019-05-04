require 'scrable'

describe Scrable do
  it 'should return 0' do
    game = Scrable.new("")
    expect(game.score).to eq(0)
  end

  it 'should return 0' do
    game = Scrable.new(" \t\n")
    expect(game.score).to eq(0)
  end
end