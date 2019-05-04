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

  it 'should return 0' do
    game = Scrable.new(nil)
    expect(game.score).to eq(0)
  end

  it 'should return 1' do
    game = Scrable.new("a")
    expect(game.score).to eq(1)
  end

  it 'should return 4' do
    game = Scrable.new("f")
    expect(game.score).to eq(4)
  end
end