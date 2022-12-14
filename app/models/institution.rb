class Institution < ApplicationRecord
    has_many :ofuros, through: :ofuro_institutions, source: :ofuro
    has_many :ofuro_institutions
    mount_uploader :image, ImageUploader
end
