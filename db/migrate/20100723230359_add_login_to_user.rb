class AddLoginToUser < ActiveRecord::Migration
  def self.up
   add_column :users, :login, :string, :uniq=>true
   add_column :users, :name, :string
  end

  def self.down
   remove_column :users, :name
   remove_column :users, :login
  end
end
