# == Schema Information
#
# Table name: images
#
#  id         :bigint           not null, primary key
#  image      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  bike_id    :bigint
#
# Indexes
#
#  index_images_on_bike_id  (bike_id)
#
# Foreign Keys
#
#  fk_rails_...  (bike_id => bikes.id)
#

FactoryBot.define do
  factory :image do
    image_url { "MyString" }
    bike { nil }
  end
end
