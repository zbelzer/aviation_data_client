class AviationDataClient::Resource < ActiveRestClient::Base
end

Dir[File.expand_path('../resources/*.rb', __FILE__)].each do |file|
  require file
end
