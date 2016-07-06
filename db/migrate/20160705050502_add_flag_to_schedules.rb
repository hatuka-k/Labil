class AddFlagToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :flag, :integer, :default => 0 #1:dayly , 2:weekly , 3:monthly , 0:others
  end
end
