class Comment < ApplicationRecord
  belongs_to :task, optional: true

  validates :title, presence: true
end
