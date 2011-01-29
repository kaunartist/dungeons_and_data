class CreateDatapoints < ActiveRecord::Migration
  def self.up
    create_table :datapoints do |t|
      t.text :message
      t.float :latitude
      t.float :longitude
      t.string :location_source
      t.string :location_accuracy
      t.integer :quest_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :datapoints
  end
end
