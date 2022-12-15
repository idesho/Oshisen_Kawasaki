class Ofuro < ApplicationRecord
    has_many :favorites, dependent: :destroy
    mount_uploader :image,ImageUploader
end
