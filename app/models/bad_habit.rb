class BadHabit < ApplicationRecord
  belongs_to :user
  has_many :bad_day_marks, dependent: :destroy
end
