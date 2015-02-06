require 'airport'

describe 'Airport' do

  let(:cltAirport) {Airport.new}

  it 'can have clear weather' do
    expect(cltAirport.weather).to eq 'sunny'
  end




end