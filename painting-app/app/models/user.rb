class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :paintings, dependent: :destroy
    has_many :topics, through: :paintings



    # def authenticate(plaintext_password)
    #     if BCrypt::Password.new(self.password_digest) == plaintext_password
    #       self
    #     else
    #       false
    #     end
    # end
end
