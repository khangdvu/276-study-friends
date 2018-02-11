class User < ApplicationRecord
    has_many :conversations, dependent: :destroy
end
