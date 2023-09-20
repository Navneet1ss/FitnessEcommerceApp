class CreateDailyWorkouts < ActiveRecord::Migration[7.0]
  def change
    create_table :daily_workouts do |t|
      t.string :focus

      t.timestamps
    end
  end
end
