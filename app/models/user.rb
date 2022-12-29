class User < ApplicationRecord

  has_many :menus
  # Iordersable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :cards
         has_many :orders
         validates :username, presence: true, uniqueness: { case_sensitive: false }
         validates :user_phonenumber, presence: true, numericality: { only_integer: true }, length: {minimum:10, maximum:10}
         validates :user_address, presence: true
         validates :user_password, presence: true, length: { minimum: 8 }
       

        end
