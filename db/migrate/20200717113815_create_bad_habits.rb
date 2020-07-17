class CreateBadHabits < ActiveRecord::Migration[6.0]
  def change
    create_table :bad_habits do |t|
      t.string :name
      t.string :category
      t.integer :days_per_week
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
