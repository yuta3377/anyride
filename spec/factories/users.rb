# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  address                :string(255)      not null
#  birthday               :date             not null
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  first_name             :string(255)      not null
#  first_name_kana        :string(255)      not null
#  last_name              :string(255)      not null
#  last_name_kana         :string(255)      not null
#  nickname               :string(255)      not null
#  phone_number           :string(255)      not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#

FactoryBot.define do
  factory :user1, class: "User" do
    nickname { 'Yuta' }
    last_name { '清水' }
    first_name { '雄大' }
    last_name_kana { 'シミズ' }
    first_name_kana { 'ユウタ' }
    birthday { '1990/10/28' }
    address { '神奈川県厚木市' }
    phone_number { '09000000000' }
    email { 'yuta@example.com' }
    password { '000000' }
    id { 0 }

    trait :invalid do
      nickname { nil }
    end
  end

  factory :user2, class: "User" do
    nickname { 'Koji' }
    last_name { '塩川' }
    first_name { '浩司' }
    last_name_kana { 'シオカワ' }
    first_name_kana { 'コウジ' }
    birthday { '1990/05/27' }
    address { '東京都中央区' }
    phone_number { '09011111111' }
    email { 'koji@example.com' }
    password { '111111' }
    id { 1 }
  end
end
