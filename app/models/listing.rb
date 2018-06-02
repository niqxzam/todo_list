class Listing < ApplicationRecord
 belongs_to :user
 mount_uploader :image, ImageUploader

 validates :title, presence: true
 validates :description, presence: true

 def self.search(search)
  where("title iLIKE ? OR description iLIKE ?", "%#{search}%", "%#{search}%") 
 end

end
