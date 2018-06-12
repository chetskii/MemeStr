class User < ApplicationRecord
    #invoke bcrypt to require AND hash passwords when adding new users:
    has_secure_password
    # 'User' can have many memes, cannot delete 'User' without deleted all of its content
    has_many :memes, dependent: :destroy
end
