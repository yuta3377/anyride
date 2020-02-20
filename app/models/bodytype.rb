# == Schema Information
#
# Table name: bodytypes
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Bodytype < ApplicationRecord
  has_many :bikes
end
