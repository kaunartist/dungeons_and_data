class CreateRewards < ActiveRecord::Migration
  def self.up
    create_table :rewards do |t|
      t.integer :experience, :null => false
      t.references :quest, :null => false

      t.timestamps
    end

    add_index :rewards, :quest_id
  end

  def self.down
    drop_table :rewards
  end
end
