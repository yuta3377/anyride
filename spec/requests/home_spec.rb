require 'rails_helper'

RSpec.describe "Home", type: :request do
  describe "GET /" do
    before do
      get root_path
    end

    it { expect(response.status).to eq 200 }

    it 'ヘッダーにタイトルが表示されていること' do
      expect(response.body).to include "AnyRide"
    end
  end
end
