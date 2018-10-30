class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :selled, class_name: 'Product', foreign_key: :seller
  has_many :buyed, class_name: 'Product', foreign_key: :buyer
end
