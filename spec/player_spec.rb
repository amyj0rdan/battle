require 'player'

describe Player do

  subject { described_class.new("Amy") }

  it 'returns its name' do
    expect(subject.name).to eq "Amy"
  end
end
