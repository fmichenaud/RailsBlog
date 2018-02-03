class Article < ApplicationRecord
    belongs_to :user
    
    mount_uploader :image, ImagesUploader
    validates :title, presence:true
    validates :published, presence:true
    validates :heading, presence:true
end
