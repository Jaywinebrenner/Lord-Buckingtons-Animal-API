require 'rails_helper'

describe "post a animal route", :type => :request do

  before do
    post '/animals', params: { :name => 'Gary', :breed => 'Oyster', :legs => 1 }
  end

  it 'returns the author name' do
    expect(JSON.parse(response.body)['name']).to eq('Gary')
  end

  it 'returns the animal breed' do
    expect(JSON.parse(response.body)['breed']).to eq('Oyster')
  end

  it 'returns the animal leg count' do
    expect(JSON.parse(response.body)['legs']).to eq(1)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:success)
  end
end
