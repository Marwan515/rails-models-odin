class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    
    validates :title, presence: true, uniqueness: true, length: { in: 8..30}
    validates :body, presence: true, length: { in: 10..250 }
end
