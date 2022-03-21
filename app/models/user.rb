class User < ApplicationRecord
    has_many :posts
    has_many :comments

    validates :name, presence: true, uniqueness: true,length: {in: 2..12}
    validates :password, presence: true,length: { in: 5..16}
    validates :email, presence: true, uniqueness: true
end