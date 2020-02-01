require 'rails_helper'

describe "get a random animal from the random route", :type => :request do
  let!(:animals) { FactoryBot.create_list(:animal, 20)}

  before { get '/randoms'}

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
