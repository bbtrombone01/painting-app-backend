class User < ApplicationRecord
    has_many :paintings, dependent: :destroy
    has_many :topics, through: :paintings
end
