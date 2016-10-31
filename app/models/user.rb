class User < ApplicationRecord
  has_many :messages
  has_many :chatrooms, through: :messages
  has_attached_file :avatar, styles: { thumb: "50x50" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
end
