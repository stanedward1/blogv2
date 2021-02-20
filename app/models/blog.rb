class Blog < ApplicationRecord
  has_many :comments
  mount_uploader :picture, PictureUploader
  # belongs_to :user
  validates :title, presence: true,
             length: { minimum: 5 }
end
