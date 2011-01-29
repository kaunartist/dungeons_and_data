class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.text :text, :null => false
      t.references :quest, :null => false
      t.references :user, :null => false

      t.timestamps

    end

    add_index :comments, :quest_id
    add_index :comments, :user_id
  end

  def self.down
    drop_table :comments
  end
end
