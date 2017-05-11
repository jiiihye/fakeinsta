class Post < ActiveRecord::Base
    mount_uploader :photo, PhotoUploader
    
    has_many :replies
    
end
