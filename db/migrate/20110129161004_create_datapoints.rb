class CreateDatapoints < ActiveRecord::Migration
  def self.up
    create_table :datapoints do |t|
      t.text :message
      t.float :latitude, :null => false
      t.float :longitude, :null => false
      t.string :location_source, :null => false
      t.string :location_accuracy
      t.references :quest, :null => false
      t.references :user, :null => false

      t.timestamps
    end

    add_index :datapoints, :quest_id
    add_index :datapoints, :user_id
  end

  def self.down
    drop_table :datapoints
  end
end
