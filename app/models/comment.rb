class Comment < ActiveRecord::Base
  belongs_to :user, :lesson

  validates :content, presence: true
end
