class Game < ActiveRecord::Base
    validates :title, presence: true, length: {maximum: 140}, uniqueness: true
    validates :genre, presence: true, length: {maximum: 50}
    validates :rating, presence: true, length: {maximum: 10}
end
