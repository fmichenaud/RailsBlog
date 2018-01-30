class Article < ApplicationRecord
    
    validates :title, presence:true
    validates :published, presence:true
    validates :heading, presence:true
    
    mount_uploader :file, PhotoUploader
end
