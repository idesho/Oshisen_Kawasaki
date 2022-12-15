class Ofuro < ApplicationRecord
    has_many :favorites, dependent: :destroy
    mount_uploader :main_image,ImageUploader
end
