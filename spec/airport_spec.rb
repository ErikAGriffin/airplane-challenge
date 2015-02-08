require 'airport'

describe 'Airport' do

  let(:plane) {double :airplane, land: nil, takeoff: nil}

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
    # !! **
    # This test is still not working as intended.
    expect(gatwick.get_weather).to satisfy{|s| ["stormy", "sunny"].include?(s)}
  end


  it 'should approve planes for landing when its sunny' do
    gatwick.approve_for_landing?(plane)
    expect(gatwick.airplanes).to eq [plane]
  end


  it 'should deny planes for landing when its stormy' do

    make_it_stormy
    gatwick.approve_for_landing?(plane)
    expect(gatwick.airplanes).to eq []
  end

  it 'should approve planes for takeoff when sunny' do
    gatwick.house(plane)
    gatwick.approve_for_takeoff?(plane)
    expect(gatwick.airplanes).to eq []
  end







end
