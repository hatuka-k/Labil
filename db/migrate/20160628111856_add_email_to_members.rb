class AddEmailToMembers < ActiveRecord::Migration
  def change
    add_column :members, :email, :string, :unique => true
  end
end
