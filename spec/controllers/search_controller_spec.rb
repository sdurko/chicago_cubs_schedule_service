require 'rails_helper'

RSpec.describe SearchController, type: :controller do

  shared_examples 'common controller expectations' do

    context 'with a GET request' do
      before(:each) do
        get :retrieve, params: args
      end

      it 'should render a 200 SUCCESS response' do
        expect(response).to have_http_status(:success)
      end

      it 'renders a json object' do
        expect{ JSON.parse(response.body) }.to_not raise_error
      end

    end

  end

  context 'with no arguments given' do
    let(:args){ {} }  # no arguments!

    include_examples 'common controller expectations'

    # TODO: validate returned content.

  end

end
