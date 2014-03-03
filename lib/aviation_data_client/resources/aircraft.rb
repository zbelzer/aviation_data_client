module AviationDataClient
  class Aircraft < Resource
    get :search, "/aircraft/search/:id"
  end
end
