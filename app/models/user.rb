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

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bikes, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :bikes, through: :favorites, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :bikes, through: :reservations, dependent: :destroy

  def like(bike)
    favorites.find_or_create_by(bike_id: bike.id)
  end

  def unlike(bike)
    favorite = favorites.find_by(bike_id: bike.id)
    favorite.destroy if favorite
  end

  def check(bike)
    self.bikes.include?(bike)
  end

  validates :nickname,
            :last_name,
            :first_name,
            :last_name_kana,
            :first_name_kana,
            :birthday,
            :address,
            :phone_number,
            presence: true
end
