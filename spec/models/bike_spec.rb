# == Schema Information
#
# Table name: bikes
#
#  id             :bigint           not null, primary key
#  description    :text(65535)
#  displacement   :integer          not null
#  mileage        :integer          not null
#  name           :string(255)      not null
#  price          :integer          not null
#  year           :integer          not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  bodytype_id    :bigint
#  manufacture_id :bigint
#  prefecture_id  :bigint
#  user_id        :bigint
#
# Indexes
#
#  index_bikes_on_bodytype_id     (bodytype_id)
#  index_bikes_on_manufacture_id  (manufacture_id)
#  index_bikes_on_prefecture_id   (prefecture_id)
#  index_bikes_on_user_id         (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (bodytype_id => bodytypes.id)
#  fk_rails_...  (manufacture_id => manufactures.id)
#  fk_rails_...  (prefecture_id => prefectures.id)
#  fk_rails_...  (user_id => users.id)
#

require 'rails_helper'

RSpec.describe Bike, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
