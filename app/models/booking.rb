class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  belongs_to :catering
end
