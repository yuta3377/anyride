# == Schema Information
#
# Table name: bodytypes
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :bodytype do
    name { "MyString" }
  end
end
