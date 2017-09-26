require 'sinatra'
require 'json'

get '/v2/catalog' do
  content_type :json
  '{
    "services": [{
      "name": "fake-service",
      "id": "acb56d7c-XXXX-XXXX-XXXX-feb140a59a66",
      "description": "fake service",
      "bindable": true,
      "plans": [{
        "name": "fake-plan-1",
        "id": "d3031751-XXXX-XXXX-XXXX-a42377d3320e",
        "description": "Shared fake Server, 5tb persistent disk, 40 max concurrent connections"
      }]
    }]
  }'
end
