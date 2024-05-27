class Planet < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings # utilisateurs ayant demander cette planète
  belongs_to :user # propriétaire
end
