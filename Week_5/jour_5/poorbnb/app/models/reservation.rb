class Reservation < ApplicationRecord
  belongs_to :guest, class_name: "User"
  belongs_to :listing
  validates_presence_of :start_date, :end_date
  validates :period, presence: true, numericality: {:greater_than => 0}

  def period
    Time.at(end_date.to_i) - Time.at(start_date.to_i)
  end

end
