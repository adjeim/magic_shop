class User < ApplicationRecord
	has_one :order
	has_many :comments
end
