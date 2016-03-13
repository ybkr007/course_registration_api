class User < ActiveRecord::Base
	validates :name, presence: true
	validates :username, presence: true, uniqueness: true
	validates :password, presence: true
	validates :usertype, presence: true
end
