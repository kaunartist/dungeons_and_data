class CreateQuests < ActiveRecord::Migration
  def self.up
    create_table :quests do |t|
      t.string :title, :null => false
      t.text :description, :null => false
      t.integer :minimum_datapoints, :null => false
      t.time :expired_at, :null => false
      t.references :reward, :null => false

      t.timestamps

    end

    add_index :quests, :reward_id
  end

  def self.down
    drop_table :quests
  end
end
