class Sighting < ActiveRecord::Base
  belongs_to :kind

  validates :date, :presence => true
  validates :latitude, :presence => true
  validates :longitude, :presence => true
  validates :kind_id, :presence => true
end
