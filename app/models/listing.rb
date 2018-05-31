class Listing < ApplicationRecord
 belongs_to :user
 mount_uploader :image, ImageUploader

 validates :title, presence: true, length: { maximum: 20 }
 validates :description, presence: true, length: { maximum: 100 }

 def self.search(search)
  where("title iLIKE ? OR description iLIKE ?", "%#{search}%", "%#{search}%") 
 end

end
