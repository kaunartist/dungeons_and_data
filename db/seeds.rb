# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.create(:username => 'konig', :email => 'konig@test.com', :password => 'testing', :experience => 87, :title => 'King of Data')
User.create(:username => 'jello', :email => 'jello@test.com', :password => 'testing', :experience => 248, :title => 'Drunken Rogue')

r = Reward.new(:experience => 50)
Quest.create(:title => 'Water Fountains', :description => 'Come on, man!', :minimum_datapoints => 100, :reward_id => r)
r.save
