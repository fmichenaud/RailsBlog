class Article < ApplicationRecord
    belongs_to :user
    has_many :comments
    mount_uploader :image, ImagesUploader
    validates :title, presence:true
    validates :published, presence:true
    validates :text, presence:true
    validates :heading, presence:true
end
