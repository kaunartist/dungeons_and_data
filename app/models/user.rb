class User < ActiveRecord::Base

  has_many :quests
  has_many :datapoints

end
