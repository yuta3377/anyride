# == Schema Information
#
# Table name: favorites
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  bike_id    :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_favorites_on_bike_id  (bike_id)
#  index_favorites_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (bike_id => bikes.id)
#  fk_rails_...  (user_id => users.id)
#

FactoryBot.define do
  factory :favorite do
    user { nil }
    bike { nil }
  end
end
