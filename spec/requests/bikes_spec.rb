require 'rails_helper'

RSpec.describe "Bikes", type: :request do
  describe "GET bikes#new" do
    it 'リクエストが成功すること' do
      user = FactoryBot.create(:user1)
      sign_in user
      get new_bike_path
      expect(response.status).to eq 200
    end
  end
end
