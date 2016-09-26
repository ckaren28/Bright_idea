class Idea < ActiveRecord::Base
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :user_liked, through: :likes, source: :user
  has_many :likes_count 


  validates :content, :presence => true
end
