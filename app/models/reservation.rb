# == Schema Information
#
# Table name: reservations
#
#  id         :bigint           not null, primary key
#  end_date   :date             not null
#  price      :integer          not null
#  start_date :date             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  bike_id    :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_reservations_on_bike_id  (bike_id)
#  index_reservations_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (bike_id => bikes.id)
#  fk_rails_...  (user_id => users.id)
#

class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :bike
end
