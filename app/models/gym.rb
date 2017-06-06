class Gym < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  geocoded_by :address

  after_validation :geocode, if: :address_changed?

  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :opening_hours, presence: true
  validates :equipments, presence: true
  validates :services, presence: true
  validates :user, presence: true
end
