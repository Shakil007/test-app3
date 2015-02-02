class Movie < ActiveRecord::Base
	searchkick
	belongs_to :user
	has_many :reviews

	mount_uploader :image, ImageUploader
end
