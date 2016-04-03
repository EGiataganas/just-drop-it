class Resource < ActiveRecord::Base
  belongs_to :user

  mount_uploader :file, ResourceUploader
end
