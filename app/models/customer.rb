class Customer < ApplicationRecord
  has_many :contracts, dependent: :destroy

    validates :name, presence: true, length: { minimum: 3 }
    validates :phone, presence: true, format: { with: /\A[6-9]\d{9}\z/ }
    validates :email, presence: true, format: URI::MailTo::EMAIL_REGEXP
end
