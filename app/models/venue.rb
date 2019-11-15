class Venue < ApplicationRecord
  include PgSearch::Model
 validates :name, presence: true
  belongs_to :user
  has_many :bookings, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  # NAME FILTER
  pg_search_scope :search_by_address,
    against: :address,
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
