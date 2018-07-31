class User < ApplicationRecord
	validates :username, presence: true
	validates :username, uniqueness: true
	validates :username, format: { without: /\s/ }
end

# MANQUE :
	# -as