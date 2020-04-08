class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many_attached :photos
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
  # validates :photos, presence: true
end
