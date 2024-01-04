class Person < ApplicationRecord
    has_many :plants, dependent: :destroy

    validates :name, :email, presence: true
    validates :name, length: { maximum: 255 }
end
