class Lesson < ActiveRecord::Base
  belongs_to :user
  belongs_to :grade_level
  belongs_to :category
  has_many :comments

  validates :title, presence: true
  validates :objective, presence: true
  validates :warmup, presence: true
  validates :main, presence: true
  validates :homework, presence: true
end
