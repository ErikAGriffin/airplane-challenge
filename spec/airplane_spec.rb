require 'airplane'

describe Airplane do

  let(:boeing) {Airplane.new}
  let(:airport) {double :airport}
  let(:rainyport) {double :airport}
  #let(:sunnyport) {double :airport}


  it "should know if it's flying" do

    expect(boeing.status).to eq 'flying'

  end

  it "should be able to land" do
    expect(boeing.status).to eq 'flying'
    boeing.land(airport)
    expect(boeing.status).to eq airport
  end

  it "should be able to takeoff" do
    boeing.land(airport)
    boeing.takeoff
    expect(boeing.status).to eq 'flying'
  end

  it 'should request landing at an airport' do

    expect(airport).to receive(:approve_for_landing?).with(boeing)
    boeing.request_landing_at(airport)
  end

  it 'should be landed at requested airport, if its sunny' do

    sunnyport = double :airport

    expect(sunnyport).to receive(:approve_for_landing?).and_return(true)

    boeing.request_landing_at(sunnyport)
    expect(boeing.status).to eq sunnyport


  end









end
