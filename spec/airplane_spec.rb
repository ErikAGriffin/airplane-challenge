require 'airplane'

describe Airplane do

  let(:boeing) {Airplane.new}


  it "should know if it's flying" do

    expect(boeing.status).to eq 'flying'

  end

  it "should be able to land" do
    expect(boeing.status).to eq 'flying'
    boeing.land('airport')
    expect(boeing.status).to eq 'airport'
  end

  it "should be able to takeoff" do
    boeing.land('airport')
    boeing.takeoff
    expect(boeing.status).to eq 'flying'
  end










end
