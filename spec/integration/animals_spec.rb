require 'swagger_helper'

describe 'Animals API' do
  path '/api/v1/animals' do
    post 'Creates an animal' do
      tags 'Animals'
      consumes 'application/json', 'application/xml'
      parameter name: :animal, in: :body, schema: {
        type: :object,
        properties: {
          name: { type: :string },
          breed: { type: :string },
          legs: { type: :integer }
        },
        required: [ 'name', 'breed', 'legs' ]
      }

      response '201', 'animal created' do
        let(:animal) { { name: 'Ken', breed: 'Oyster', legs: 5 } }
        run_test!
      end

      response '422', 'invalid request' do
      let(:animal) { { name: 'Penelope', breed: 'Pig', legs: 25 } }
        run_test!
      end
    end
  end

  path '/api/v1/animals/{id}' do

    get 'Retrieves a animal' do
      tags 'Animals'
      produces 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :string

      response '200', 'name found' do
        schema type: :object,
        properties: {
          name: { type: :string },
          breed: { type: :string },
          legs: { type: :integer }
        },
        required: [ 'name', 'breed', 'legs' ]


        let(:id) { Animal.create(name: 'Ken', breed: 'Oyster', legs: 5) }
        run_test!
      end

      response '404', 'animal not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end



  path '/api/v1/animals/{id}' do

    get 'Updates an animal' do
      tags 'Animals'
      produces 'application/json', 'application/xml'
      parameter name: :id, :in => :path, :type => :string

      response '200', 'name found' do
        schema type: :object,
        properties: {
          name: { type: :string },
          breed: { type: :string },
          legs: { type: :integer }
        },
        required: [ 'name', 'breed', 'legs' ]


        let(:id) { Animal.create(name: 'Ken', breed: 'Oyster', legs: 5) }
        run_test!
      end

      response '404', 'animal not found' do
        let(:id) { 'invalid' }
        run_test!
      end
    end
  end

end
