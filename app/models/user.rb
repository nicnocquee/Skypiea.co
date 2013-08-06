class User < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	VALID_USERNAME_REGEX = /\A[a-z0-9_\-.]{1,50}\z/i

	validates :username, presence: true, format: { with: VALID_USERNAME_REGEX}, uniqueness: { case_sensitive: false }
  	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  	before_save {
  		self.email = email.downcase
  	}
end
