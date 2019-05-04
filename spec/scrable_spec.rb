require 'scrable'

describe Scrable do
  it '1- should return 0' do
    game = Scrable.new("")
    expect(game.score).to eq(0)
  end

  it '2- should return 0' do
    game = Scrable.new(" \t\n")
    expect(game.score).to eq(0)
  end

  it '3- should return 0' do
    game = Scrable.new(nil)
    expect(game.score).to eq(0)
  end

  it '4- should return 1' do
    game = Scrable.new("a")
    expect(game.score).to eq(1)
  end

  it '5- should return 4' do
    game = Scrable.new("f")
    expect(game.score).to eq(4)
  end

  it '6- should return 6' do
    game = Scrable.new("street")
    expect(game.score).to eq(6)
  end

  it '7- should return 22' do
    game = Scrable.new("quirky")
    expect(game.score).to eq(22)
  end

  it '8- should return 41' do
    game = Scrable.new("OXYPHENBUTAZONE")
    expect(game.score).to eq(41)
  end
end