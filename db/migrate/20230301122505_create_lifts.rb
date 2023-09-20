class CreateLifts < ActiveRecord::Migration[7.0]
  def change
    create_table :lifts do |t|
      t.string :name
      t.integer :sets
      t.integer :reps
      t.references :daily_workout, null: false, foreign_key: true

      t.timestamps
    end
  end
end
