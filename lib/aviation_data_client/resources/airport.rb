module AviationDataClient
  class Airport < Resource
    get :search, "/airport/search/:id"
  end
end
