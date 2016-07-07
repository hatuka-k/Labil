class RemoveUserIdFromMembers < ActiveRecord::Migration
  def change
    remove_column :members, :user_id, :integer
  end
end
