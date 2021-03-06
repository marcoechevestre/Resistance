require 'rails_helper'

RSpec.describe 'ZSSN API', type: :request do
#let!(:survivors) {create_list(:survivor, 10)}
  let!(:survivors) {create_list(:survivor)}
  let(:survivor_id) {todos.first.id}

# Test suite for GET /survivors
  describe 'GET /survivors' do
    before { get '/survivors' }

    it 'returns survivors' do
      expect(json).not_to be_empty
#      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end


# Test suite for GET /survivors/:id
  describe 'GET /survivors/:id' do
    before {get "/todos/#{survivor_id}"}

    context 'when the record exists' do
      it 'returns the survivor' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(survivor_id)
      end

      it 'return status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exit' do
      let(:survivor_id) {100}

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Survivor/)
      end
    end
  end


# Test suite for POST /todos
  describe 'POST /survivors' do

    let(:valid_attributes) { { name: 'Marco Antonio', gender: '0', birth_date: 'May, 22 May 1997', status: '0', latitude: '-29.691913', longitude: '-53.812466', reports: '0' } }

    context 'when the request is valid' do
      before { post '/survivors', params: valid_attributes}

      it 'creates a survivor' do
        expect(json['status'].to eq(0))
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/survivors', params: { title: 'Foobar' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: Created by can't be blank/)
      end
    end
  end

# Test suite for PUT /survivors/:id
describe 'PUT /survivors/:id' do
    let(:valid_attributes) { { name: 'Carlos' } }

    context 'when the record exists' do
      before { put "/survivors/#{survivor_id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end


end

