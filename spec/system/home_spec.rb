require 'rails_helper'

RSpec.feature 'Home', type: :system do
  background do
    logged_in_user = create(:user)
    sign_in logged_in_user
    visit root_path
  end

  scenario 'ヘッダーのリンク表示確認' do
    within '.navbar' do
      page.has_link? root_path
      page.has_link? prefectures_path
      page.has_link? favorite_bikes_path
      page.has_link? edit_user_registration_path
      page.has_link? destroy_user_session_path
    end
  end

  scenario 'バイク検索リンク表示確認' do
    page.has_link? prefectures_path
    page.has_link? manufactures_path
    page.has_link? bodytypes_path
  end

  scenario '新着/人気/旧車バイクリンク表示確認' do
    within '.sandbox' do
      page.has_link? 'bikes/new_arrival'
      page.has_link? 'bikes/old'
    end
  end

  scenario 'ログインしていればバイク登録ボタンが表示されること' do
    page.has_button? 'バイク登録はこちら！'
  end

  scenario 'ログインしていなければバイク登録ボタンが表示されないこと' do
    page.has_no_button? 'バイク登録はこちら！'
  end
end
