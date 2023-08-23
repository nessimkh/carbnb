class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :vehicle
  validates :end_time, comparison: { greater_than: :start_time }
  validates :date_range_available?
 #TODO implement block for certain vehicle at the time slot already rented
  def date_range_available?
    # https://stackoverflow.com/a/36354313
    rental_events = Rental.where(
      '(start_time BETWEEN ? AND ?) OR (end_time BETWEEN ? AND ?) OR (start_time <= ? AND end_time >= ?)',
      start_time,
      end_time,
      start_time,
      end_time,
      start_time,
      end_time
    )
    rental_events.empty?
  end
end
