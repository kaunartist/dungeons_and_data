class Datapoint < ActiveRecord::Base

  belongs_to :quest
  belongs_to :user

  attr_protected :quest_id, :user_id, :location_source

  attr_accessor :address
  geocoded_by :address
  before_validation :set_coordinates

  def set_coordinates
    if self.address
      fetch_coordinates
      self.location_source = 'google'
    elsif self.longitude && self.latitude && self.location_source.empty?
      self.location_source = 'geolocation'
    end
  end


end
