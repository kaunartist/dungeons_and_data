class RemoveRewardIdFromQuest < ActiveRecord::Migration
  def self.up
    remove_column :quests, :reward_id
  end

  def self.down
    add_column :quests, :reward_id, :integer
  end
end
