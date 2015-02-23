class Item < ActiveRecord::Base
	mount_uploader :photo, PhotoUploader
	has_many :order_items
	validates :name, presence: true
	validates :number, presence: true
	validates :price, presence: true
end
