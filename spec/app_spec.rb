require File.expand_path '../spec_helper.rb', __FILE__

describe 'The API App' do

    it 'returns hello world' do
      get '/'
      expect(last_response).to be_ok
      expect(last_response.body).to eq('Hello World')
    end

end
