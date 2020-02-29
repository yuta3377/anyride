require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET registration#new" do
    it 'リクエストが成功すること' do
      get new_user_registration_path
      expect(response.status).to eq 200
    end
  end

  describe "POST registration#create" do
    context 'パラメータが妥当な場合' do
      it 'リクエストが成功すること' do
        post user_registration_path, params: { user: FactoryBot.attributes_for(:user1) }
        expect(response.status).to eq 302
      end

      it 'ユーザーが登録されること' do
        expect do
          post user_registration_path, params: { user: FactoryBot.attributes_for(:user1) }
        end.to change(User, :count).by(1)
      end

      it 'Homeにリダイレクトすること' do
        post user_registration_path, params: { user: FactoryBot.attributes_for(:user1) }
        expect(response).to redirect_to root_path
      end
    end

    context 'パラメータが不正な場合' do
      it 'リクエストが成功すること' do
        post user_registration_path, params: { user: FactoryBot.attributes_for(:user1, :invalid) }
        expect(response.status).to eq 200
      end

      it 'ユーザーが登録されないこと' do
        expect do
          post user_registration_path, params: { user: FactoryBot.attributes_for(:user1, :invalid) }
        end.not_to change(User, :count)
      end

      it 'エラーが表示されること' do
        post user_registration_path, params: { user: FactoryBot.attributes_for(:user1, :invalid) }
        expect(response.body).to include '1 件のエラーが発生したため user は保存されませんでした'
      end
    end
  end

  describe "GET session#new" do
    it 'リクエストが成功すること' do
      get new_user_session_path
      expect(response.status).to eq 200
    end
  end

  xdescribe "POST session#create" do
    context 'パラメータが妥当な場合' do
      it 'ログインできること' do
        post user_session_path, params: { user: FactoryBot.attributes_for(:user1) }
        expect(response).to redirect_to root_path
      end
    end

    context 'パラメータが不正な場合' do
      it 'エラーが表示されること' do
        post user_session_path, params: { user: FactoryBot.attributes_for(:user1, :invalid) }
        expect(response.body).to include 'メールアドレス もしくはパスワードが不正です。'
      end
    end
  end
end
