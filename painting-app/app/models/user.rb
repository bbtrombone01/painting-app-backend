class User < ApplicationRecord
    has_many :paintings
    has_many :topics, through: :paintings
end
