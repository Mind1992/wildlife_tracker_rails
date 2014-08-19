class Sighting < ActiveRecord::Base
  validates :date, :presence => true
  validates :latitude, :presence => true
  validates :longitude, :presence => true
  validates :kind_id, :presence => true

  belongs_to :kind
  belongs_to :region
end
