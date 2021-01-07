class Post < ApplicationRecord
    has_many_attached :uploads
    has_one_attached :cover_image
end
