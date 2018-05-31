class Listing < ApplicationRecord
 belongs_to :user
 mount_uploader :image, ImageUploader

 def self.search(search)
  where("title iLIKE ? OR description iLIKE ?", "%#{search}%", "%#{search}%") 
 end

end
