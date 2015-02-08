require 'airplane'

describe Airplane do

  let(:boeing) {Airplane.new}
  let(:airport) {double :airport}
  let(:sunnyport) {double :airport, approve_for_landing?: true, approve_for_takeoff?: true}
  let(:stormyport) {double :airport, approve_for_landing?: false, approve_for_takeoff?: false}


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
    boeing.request_landing_at(sunnyport)
    expect(boeing.status).to eq sunnyport

  end

  it 'should stay in the air if requested airport is stormy' do
    boeing.request_landing_at(stormyport)
    expect(boeing.status).to eq 'flying'
  end

  it 'should request takeoff from an airport' do
    expect(airport).to receive(:approve_for_takeoff?).with(boeing)
    boeing.request_takeoff_from(airport)
  end

  it 'should takeoff if its airport is sunny' do
    boeing.request_landing_at(sunnyport)
    boeing.request_takeoff_from(sunnyport)
    expect(boeing.status).to eq 'flying'
  end

  it 'should not takeoff if its airport is stormy' do
    boeing.land(stormyport)
    boeing.request_takeoff_from(stormyport)
    expect(boeing.status).to eq stormyport
  end









end
