class Blog < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :content,presence: true
  belongs_to :user
end
