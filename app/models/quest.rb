class Quest < ActiveRecord::Base

  has_one :reward
  has_many :comments
  has_many :datapoints

end
