class Video < ApplicationRecord
  belongs_to :user
  has_one_attached :video

  validates :title, presence: true
  validates :detail, presence: true
  
end
