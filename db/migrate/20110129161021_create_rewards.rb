class CreateRewards < ActiveRecord::Migration
  def self.up
    create_table :rewards do |t|
      t.integer :experience
      t.integer :quest_id

      t.timestamps
    end
  end

  def self.down
    drop_table :rewards
  end
end
