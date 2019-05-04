require 'scrable'

describe Scrable do
  it 'should return 0' do
    expect(subject.score('')).to eq(0)
  end
end