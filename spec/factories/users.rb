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
  factory :user, class: "User" do
    nickname { 'Yuya' }
    last_name { '清水' }
    first_name { '優也' }
    last_name_kana { 'シミズ' }
    first_name_kana { 'ユウヤ' }
    birthday { '1990/10/29' }
    address { '神奈川県横浜市' }
    phone_number { '09033333333' }
    email { 'yuya@example.com' }
    password { '333333' }

    trait :invalid do
      nickname { nil }
    end
  end
end
