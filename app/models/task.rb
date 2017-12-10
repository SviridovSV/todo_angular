class Task < ApplicationRecord
  belongs_to :project, optional: true
  acts_as_list scope: :project

  validates :title, presence: true
end
