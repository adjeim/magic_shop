class User < ApplicationRecord

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

	validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
	
	validates :password, presence: true, length: {minimum: 8, maximum: 32}, confirmation: true
	validates :password_confirmation, presence: true

	validates :fname, presence: true
	validates :lname, presence: true

	has_one :order
	has_many :comments
end
