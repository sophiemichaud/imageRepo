class Post < ApplicationRecord
    belongs_to :user
    has_many_attached :uploads
    has_one_attached :cover_image
    validates :title, presence:true
end
