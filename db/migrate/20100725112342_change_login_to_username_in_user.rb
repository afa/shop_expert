class ChangeLoginToUsernameInUser < ActiveRecord::Migration
  def self.up
   add_column :users, :username, :string
   User.all.each{|u| u.update_attributes :username=>u.login }
   remove_column :users, :login
  end

  def self.down
   add_column :users, :login, :string
   User.all.each{|u| u.update_attributes :login=>u.username }
   remove_column :users, :username
  end
end
