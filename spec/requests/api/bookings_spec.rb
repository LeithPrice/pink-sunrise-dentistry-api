require 'rails_helper'

RSpec.describe "BookingsController", type: :request do
  let(:admin) { users(:admin)}
describe ' for allowed user' do
  before do
    user_login(user_with_permission)
    get :show, params: { id: message.id }
  end
  it { expect(response).to have_http_status(:ok) }
end 
end






