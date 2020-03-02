require 'rails_helper'

RSpec.feature 'Users', type: :system do
  scenario '新規ユーザー登録ができること' do
    visit new_user_registration_path
    fill_in "ニックネーム", with: "Jiro"
    fill_in "姓(漢字)", with: "鈴木"
    fill_in "名(漢字)", with: "二郎"
    fill_in "姓(カナ)", with: "スズキ"
    fill_in "名(カナ)", with: "ジロウ"
    fill_in "生年月日", with: "1990/10/31"
    fill_in "住所", with: "神奈川県横浜市"
    fill_in "電話番号", with: "09044444444"
    fill_in "Email", with: "jiro@example.com"
    fill_in "パスワード", with: "444444"
    fill_in "パスワード再入力", with: "444444"
    click_button '登録する'
    expect(page).to have_content 'アカウント登録が完了しました。'
  end

  scenario '登録されたユーザーであればログインができること' do
    create(:user)
    visit new_user_session_path
    fill_in "メールアドレス", with: "ichiro@example.com"
    fill_in "パスワード", with: "333333"
    click_button 'ログイン'
    expect(page).to have_content 'ログインしました。'
  end

  scenario '登録されたユーザー以外はログインができないこと' do
    create(:user)
    visit new_user_session_path
    fill_in "メールアドレス", with: "jiro@example.com"
    fill_in "パスワード", with: "111111"
    click_button 'ログイン'
    expect(page).to have_content 'メールアドレス もしくはパスワードが不正です。'
  end

  scenario 'ログインしているユーザーはログアウトできること' do
    logged_in_user = create(:user)
    sign_in logged_in_user
    visit root_path
    click_on 'ログアウト'
    expect(page).to have_content 'ログアウトしました。'
  end
end
