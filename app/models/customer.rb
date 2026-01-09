class Customer < ApplicationRecord
  has_many :contracts, dependent: :destroy

  validates :name, :phone, presence: true
end
