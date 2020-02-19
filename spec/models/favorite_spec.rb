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
#  index_favorites_on_bike_id              (bike_id)
#  index_favorites_on_user_id              (user_id)
#  index_favorites_on_user_id_and_bike_id  (user_id,bike_id) UNIQUE
#
# Foreign Keys
#
#  fk_rails_...  (bike_id => bikes.id)
#  fk_rails_...  (user_id => users.id)
#

require 'rails_helper'

RSpec.describe Favorite, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
