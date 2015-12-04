class Reccomendation < ActiveRecord::Base
  belongs_to :user
  belongs_to :game
  
  validates :user_id, presence: true
  validates :game_id, presence: true
  validates :opinion, presence: true, length: {maximum: 500}
end
