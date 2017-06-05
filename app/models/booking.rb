class Booking < ApplicationRecord

  belongs_to :user
  belongs_to :gym
  before_create :calculate_expiry_date

  DEFAULT_EXPIRTY_TIME = 30.days.from_now

  private

  def calculate_expiry_date
    self.expiry_date = DEFAULT_EXPIRTY_TIME
  end
end
