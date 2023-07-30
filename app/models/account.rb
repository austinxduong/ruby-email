class Account < ApplicationRecord

    validates :firstname, presence: true
    validates :lastname, presence: true
    validates :username, presence: true, length: { minimum: 3 }
    validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }


end
