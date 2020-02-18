# == Schema Information
#
# Table name: reservations
#
#  id          :bigint           not null, primary key
#  end_date    :date             not null
#  price       :integer          not null
#  start_date  :date             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  bike_id     :bigint
#  borrower_id :bigint
#  owner_id    :bigint
#
# Indexes
#
#  index_reservations_on_bike_id      (bike_id)
#  index_reservations_on_borrower_id  (borrower_id)
#  index_reservations_on_owner_id     (owner_id)
#
# Foreign Keys
#
#  fk_rails_...  (bike_id => bikes.id)
#  fk_rails_...  (borrower_id => users.id)
#  fk_rails_...  (owner_id => users.id)
#

FactoryBot.define do
  factory :reservation do
    start_date { "2020-02-17" }
    end_date { "2020-02-17" }
    price { 1 }
    owner { "" }
    borrower { nil }
    bike { nil }
  end
end
