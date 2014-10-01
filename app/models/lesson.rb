class Lesson < ActiveRecord::Base
  belongs_to :user, :grade_level, :category
  has_many :comments

  validates :title, presence: true
  validates :warmup, presence: true
  validates :main, presence: true
  validates :homework, presence: true
end
