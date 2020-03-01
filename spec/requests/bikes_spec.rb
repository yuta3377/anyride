require 'rails_helper'

RSpec.describe "Bikes", type: :request do
  xdescribe "GET bikes#new" do
    before do
      user = create(:user)
      sign_in user
    end

    it 'リクエストが成功すること' do
      get new_bike_path
      expect(response.status).to eq 200
    end
  end
end
