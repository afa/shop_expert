class CreateThings < ActiveRecord::Migration
  def self.up
    create_table :things do |t|
      t.string :name
      t.string :title
      t.string :data_file_name
      t.string :data_content_type
      t.integer :data_file_size
      t.integer :thingable_id, :null=>false
      t.string :thingable_type
      t.string :type
      t.timestamps
    end
    add_index :things, [:thingable_id]
  end

  def self.down
    drop_table :things
  end
end
