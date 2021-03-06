class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :photos
  # need to figure out dependent stuff
  geocoded_by :address
  after_validation :geocode

  validates :user, presence: true
  validates :name, length: {minimum: 3}, presence: true, uniqueness: { case_sensitive: false}
  validates :address, presence: true
  validates :description, presence: true
end
