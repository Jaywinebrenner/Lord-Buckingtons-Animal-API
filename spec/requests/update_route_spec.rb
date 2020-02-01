require 'rails_helper'

describe 'POST /animals', :type => :request do
  context '(valid request)' do
    before do
      post '/animals', params: { :name => 'Gunther', :breed => "Oyster", :legs=> 7 }
    end

    it 'returns the name of the animal' do
      expect(JSON.parse(response.body)['name']).to eq('Gunther')
    end

    it 'returns the breed of the animal' do
      expect(JSON.parse(response.body)['breed']).to eq('Oyster')
    end

    it 'returns the number of legs the animal has' do
      expect(JSON.parse(response.body)['legs']).to eq(7)
    end


    it 'returns a detailed success message' do
      expect(JSON.parse(response.body)['id']).to be_an_instance_of(Integer)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status 200
    end
  end


  context '(bad request)' do
    before do
      post '/animals', params: { :name => '', :breed=> '', :legs => '' }
    end

    it 'returns a detailed error message' do
      expect(JSON.parse(response.body)['message']).to eq 'Validation failed: Name can\'t be blank, Breed can\'t be blank, Legs can\'t be blank'
    end

  end
end
