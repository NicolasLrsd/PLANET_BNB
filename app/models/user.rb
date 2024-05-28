class User < ApplicationRecord
  has_many :bookings
  has_many :owner_planets, foreign_key: :user_id, class_name: "Planet"
  has_many :planets, through: :bookings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
