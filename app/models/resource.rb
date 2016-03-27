class Resource < ActiveRecord::Base
  mount_uploader :file, ResourceUploader
end
