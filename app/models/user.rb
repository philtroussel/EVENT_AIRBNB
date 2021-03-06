class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :venues

  has_many :favorites
  has_many :favorite_venues, through: :favorites, source: :favorited, source_type: 'Venue'

  has_many :caterings

end
