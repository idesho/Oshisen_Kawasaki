class Ofuro < ApplicationRecord
    has_many :favorites, dependent: :destroy
    mount_uploader :image,ImageUploader
    belongs_to :ward
    # geocoded_by :name
    # after_validation :geocode
end
