class Blog < ApplicationRecord
  has_many :comments
  mount_uploader :picture, PictureUploader
  validates :title, presence: true,
             length: { minimum: 5 }
end
