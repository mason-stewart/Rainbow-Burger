class User < ActiveRecord::Base
	has_many :burgers
	has_many :ingredients
	accepts_nested_attributes_for :burgers, :allow_destroy => true 
end
