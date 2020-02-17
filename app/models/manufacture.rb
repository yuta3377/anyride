# == Schema Information
#
# Table name: manufactures
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Manufacture < ApplicationRecord
  has_many :bike
end
