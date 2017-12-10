class Comment < ApplicationRecord
  belongs_to :task, optional: true

  mount_uploader :attachment, AttachmentUploader
  validates :title, presence: true
end
