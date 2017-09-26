require File.expand_path '../spec_helper.rb', __FILE__

describe 'The API App' do

    it 'returns a string containing json' do
      get '/v2/catalog'
      return_hash = JSON.parse(last_response.body)
      expect(last_response).to be_ok
      expect(return_hash).to eq( {"services" => []} )
    end

end
