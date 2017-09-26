require File.expand_path '../spec_helper.rb', __FILE__

describe 'App' do

    it 'returns a string containing json' do
      get '/v2/catalog'
      return_hash = JSON.parse(last_response.body)
      expect(last_response).to be_ok
      expect(return_hash).to eq( {
                                  "services" => [{
                                    "name" => "fake-service",
                                    "id" => "acb56d7c-XXXX-XXXX-XXXX-feb140a59a66",
                                    "description" => "fake service",
                                    "bindable" => true,
                                    "plans" => [{
                                      "name" => "fake-plan-1",
                                      "id" => "d3031751-XXXX-XXXX-XXXX-a42377d3320e",
                                      "description" => "Shared fake Server, 5tb persistent disk, 40 max concurrent connections"
                                    }]
                                  }]
                                } )
    end

    it 'responds with json content type' do
      get '/v2/catalog'
      return_hash = JSON.parse(last_response.body)
      expect(last_response.header['Content-Type']).to include 'application/json'
    end

end
