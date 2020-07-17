class GoodHabit < ApplicationRecord
  belongs_to :user
  has_many :good_day_marks, dependent: :destroy
end
