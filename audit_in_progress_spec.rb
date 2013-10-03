require 'rspec'
require 'vcr'
require './audit_in_progress'
require 'webmock'

VCR.configure do |c|
  c.cassette_library_dir = 'fixtures/vcr_cassettes'
  c.hook_into :webmock
end

describe StJoeCountyData do
  it "gets data for a parcel_id" do
    VCR.use_cassette('parcel_id_018-7084-3052') do
      @my_data = StJoeCountyData.get_data_for_parcel("018-7084-3052")
      @my_data.keys.should include("Detailed Report URL")
    end
  end
end

