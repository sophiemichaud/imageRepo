class User < ApplicationRecord

    has_secure_password
    has_many_attached :image
    validates :first_name, :last_name, :email, :password, presence: { message: "is missing."}
    validates :email, uniqueness: { message: ->(object, data) do
        "#{data[:value]} is already taken."
      end}
end
