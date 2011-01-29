class Quest < ActiveRecord::Base

  has_one :reward
  has_many :comments
  has_many :datapoints

  # TODO: minimum expired_at validation

end
