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






#   describe "GET bookings" do
    
#       let(:user) { FactoryBot.create(:user, username: 'steve', email: 'steve', password: 'password', password_confirmation: 'password')}
#       let(:token_new) { JsonWebToken.encode(user_id: user.id) }
#       let(:token) do
#         {  "Authorization" => "Bearer #{token_new}"  }
#     end
#     it "returns all bookings!" do
#       get bookings_path, params: { headers: token}
#       expect(response).to have_http_status(200)
#     end
#   end
# end
