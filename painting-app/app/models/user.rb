class User < ApplicationRecord
    #not sure why line 3 doesn't work but line 8-14 does when they should be the same
    #has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    has_many :paintings, dependent: :destroy
    has_many :topics, through: :paintings

    def authenticate(plaintext_password)
        if BCrypt::Password.new(self.password_digest) == plaintext_password
          self
        else
          false
        end
    end
end
