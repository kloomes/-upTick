class CreateGoodDayMarks < ActiveRecord::Migration[6.0]
  def change
    create_table :good_day_marks do |t|
      t.integer :status
      t.references :good_habit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
