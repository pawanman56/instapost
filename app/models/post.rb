class Post < ActiveRecord::Base
    
    mount_uploader :photo, PhotoUploader
    
    belongs_to :user
    
    validates :photo, :description, :user_id, presence: true
    
end