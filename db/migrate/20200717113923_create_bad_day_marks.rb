class CreateBadDayMarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bad_day_marks do |t|
      t.integer :status
      t.references :bad_habit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
