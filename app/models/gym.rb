class Gym < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  monetize :price_cents
  include PgSearch
  pg_search_scope :search, against: [ :name, :address, :equipments, :services, :lessons ]


  after_validation :geocode, if: :address_changed?

  has_many :bookings, dependent: :destroy
  belongs_to :user
  has_many :photos, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :opening_hours, presence: true
  validates :equipments, presence: true
  validates :services, presence: true
  validates :user, presence: true
end
