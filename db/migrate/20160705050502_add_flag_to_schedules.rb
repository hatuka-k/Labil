class AddFlagToSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :flag, :integer, :default => 0 #0:day , 1:week , 2:month
  end
end
