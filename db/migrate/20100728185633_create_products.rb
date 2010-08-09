class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :name
      t.timestamps
    end
    create_table :bodies_products, :id=>false do |t|
     t.integer :body_id
     t.integer :product_id
    end
    add_index :bodies_products, [:body_id]
    add_index :bodies_products, [:product_id]
  end

  def self.down
    drop_table :bodies_products
    drop_table :products
  end
end
