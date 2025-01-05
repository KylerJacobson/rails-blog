class Post < ApplicationRecord
  has_many :attachments

  validates :title, presence: true
  validates :body, presence: true
  validates :user_id, presence: true, numericality: true
end
