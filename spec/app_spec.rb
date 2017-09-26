require File.expand_path '../spec_helper.rb', __FILE__

describe 'The API App' do

    it 'returns a string containing json' do
      get '/v2/catalog'
      expect(last_response).to be_ok
      expect(last_response.body).to eq('{"services": []}')
    end

end
