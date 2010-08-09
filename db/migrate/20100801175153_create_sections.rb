class CreateSections < ActiveRecord::Migration
  def self.up
    create_table :sections do |t|
     t.string :name
     t.timestamps
    end
    create_table :products_sections, :id=>false do |t|
     t.integer :product_id
     t.integer :section_id
    end
    add_index :products_sections, :product_id
    add_index :products_sections, :section_id
  end

  def self.down
   drop_table :products_sections
   drop_table :sections
  end
end
