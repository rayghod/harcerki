class Item < ActiveRecord::Base
	mount_uploader :photo, PhotoUploader
	has_many :order_items
end
