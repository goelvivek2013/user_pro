class Image < ActiveRecord::Base
  belongs_to :profile
  mount_uploader :avatar, AvatarUploader
end
