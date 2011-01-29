class CreateQuests < ActiveRecord::Migration
  def self.up
    create_table :quests do |t|
      t.string :title
      t.text :description
      t.integer :minimum_datapoints
      t.time :expired_at
      t.integer :reward_id

      t.timestamps
    end
  end

  def self.down
    drop_table :quests
  end
end
