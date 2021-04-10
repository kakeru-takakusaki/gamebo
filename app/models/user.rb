class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: { message: "can't be blank" } do
    validates :nickname,      uniqueness: true
  end

  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages
  has_one_attached :image

end
