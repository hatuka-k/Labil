class AddFlagToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :flag, :integer, :default =>  0 #0:daily , 1:weekly , 2:monthly , 3:others
  end
end
