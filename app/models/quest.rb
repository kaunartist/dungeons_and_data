class Quest < ActiveRecord::Base

  has_one :reward
  has_many :comments
  has_many :datapoints

  validates_presence_of :title, :description, :minimum_datapoints, :expired_at
  # TODO: minimum expired_at validation

end
