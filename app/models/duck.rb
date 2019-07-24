class Duck < ApplicationRecord
  validates :name, :description, presence: true

  belongs_to :student
end
