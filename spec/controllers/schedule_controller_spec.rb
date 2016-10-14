require 'rails_helper'

RSpec.describe ScheduleController, type: :controller do
  shared_examples 'common controller expectations' do

    context 'with a GET request' do
      before(:each) do
        get :retrieve, params: args
      end

      it 'should render a 200 SUCCESS response' do
        expect(response).to have_http_status(:success)
      end

      it 'renders a the :show template' do
        expect(response.body).to render_template(:show)
      end

    end

  end

end
