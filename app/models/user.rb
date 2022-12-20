class User < ApplicationRecord
    validates :name,  presence: true, length: { maximum: 30 }
    validates :email, presence: true, length: { maximum: 255 },
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
    uniqueness: true

    has_secure_password
    validates :password, length: { minimum: 6 }
    validates :nickname, uniqueness: true
    has_many :favorites, dependent: :destroy
    has_many :favorite_ofuros, through: :favorites, source: :ofuro
    # mount_uploader :image, ImageUploader
    has_one_attached :image
end
