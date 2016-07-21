class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :member_id
      t.datetime :event_start
      t.datetime :event_end
      t.integer :venue

      t.timestamps null: false
    end
  end
end
