require 'spec_helper'

describe AviationDataClient::Aircraft do
  it "makes a simple request to search" do
    stub_request(:get, "http://localhost/aircraft/search/FOO").
      to_return(:status => 200, :body => read_fixture('aircraft.json'))

    result = AviationDataClient::Aircraft.search("FOO")

    expect(result.aircraft_category).to eq("land")
    expect(result.aircraft_type).to eq("fixed_wing_single_engine")
    expect(result.engine_type).to eq("Reciprocating")
    expect(result.identifier).to eq("N1")
    expect(result.manufacturer_name).to eq( "101 FLYING ASSOC INC")
    expect(result.model_name).to eq(" SEAREY")
    expect(result.weight).to eq("CLASS 1")
  end

  it "makes a search with a date" do
    stub_request(:get, "http://localhost/aircraft/search/FOO?date=2013-03-02T00:00:00%2B00:00").
      to_return(:status => 200, :body => read_fixture('aircraft.json'))

    date = DateTime.new(2013, 3, 2)
    result = AviationDataClient::Aircraft.search(:id => "FOO", :date => date)

    expect(result.aircraft_category).to eq("land")
    expect(result.aircraft_type).to eq("fixed_wing_single_engine")
    expect(result.engine_type).to eq("Reciprocating")
    expect(result.identifier).to eq("N1")
    expect(result.manufacturer_name).to eq( "101 FLYING ASSOC INC")
    expect(result.model_name).to eq(" SEAREY")
    expect(result.weight).to eq("CLASS 1")
  end
end
