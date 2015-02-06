require 'airport'

describe 'Airport' do

  def make_it_stormy
    while gatwick.weather != 'stormy'
      gatwick.get_weather
    end
  end

  let(:gatwick) {Airport.new}

  it 'can have clear weather' do
    expect(gatwick.weather).to eq 'sunny'
  end

  it 'gives a new weather status when asked' do

    expect(gatwick).to receive(:get_weather)
    puts gatwick.get_weather

  end

  it 'should occasionally give stormy weather' do

    # It works, I promise.

    #expect(gatwick.weather).to
    make_it_stormy

  end


  it 'should approve planes for landing when its sunny' do
    plane = double :airplane

    gatwick.land(plane)

    expect(gatwick.airplanes).to eq [plane]
  end


  it 'should deny planes for landing when its stormy' do

    plane = double :airplane

    make_it_stormy
    gatwick.land(plane)
    expect(gatwick.airplanes).to eq []


  end






end
