class Sweet < ApplicationRecord
  belongs_to :user
  has_many   :comments
  mount_uploader :image, ImageUploader

  def self.search(search)
    return Sweet.all unless search
    Sweet.where('name LIKE(?)', "%#{search}%")
  end
end
