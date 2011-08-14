class Burger < ActiveRecord::Base
	validates_presence_of :user_id
	has_and_belongs_to_many :ingredients
	belongs_to :user
end
