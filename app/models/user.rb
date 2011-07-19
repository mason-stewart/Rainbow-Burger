class User < ActiveRecord::Base
	has_many :burgers
	has_many :ingredients
end
