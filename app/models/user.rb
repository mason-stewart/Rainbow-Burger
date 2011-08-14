class User < ActiveRecord::Base
	include Clearance::User

	def email_optional?
		true
	end

	def self.authenticate(username, password)
		return nil  unless user = find_by_username(username)
		return user if     user.authenticated?(password)
	end

	has_many :burgers
	has_many :ingredients
	accepts_nested_attributes_for :burgers, :allow_destroy => true 
end
