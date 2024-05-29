class User < ApplicationRecord
  has_many :bookings
  has_many :bookings_as_owner, through: :planets, source: :bookings # bookings on the planets that user owns
  has_many :planets # user planets

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
