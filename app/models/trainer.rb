class Trainer < ApplicationRecord
    has_many :clients
    validates :email, :password, :name, presence: true
    has_secure_password
end
