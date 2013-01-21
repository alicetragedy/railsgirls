class Kitten < ActiveRecord::Base
	mount_uploader :picture, PictureUploader
end
