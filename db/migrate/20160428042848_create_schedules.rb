class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :time_open
      t.integer :time_finish
      t.string :date
      t.string :datetime
      t.text :content
      t.integer :team_id

      t.timestamps null: false
    end
  end
end
