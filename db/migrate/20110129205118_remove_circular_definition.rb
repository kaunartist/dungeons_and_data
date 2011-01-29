class RemoveCircularDefinition < ActiveRecord::Migration
  def self.up
    change_column :rewards, :quest_id, :integer, :null => true
  end

  def self.down
    change_column :rewards, :quest_id, :integer, :null => false
  end
end
