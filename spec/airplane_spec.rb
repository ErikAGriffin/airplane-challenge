require 'airplane'

describe Airplane do

  let(:boeing) {Airplane.new}


  it "should know if it's flying" do

    expect(boeing.status).to eq 'flying'

  end

  it "should be able to land" do

    expect(boeing.status).to eq 'flying'
    boeing.land
    expect(boeing.status).to eq 'landed'
  end

  it "should be able to takeoff" do
    boeing.land
    boeing.takeoff
    expect(boeing.status).to eq 'flying'

  end






end