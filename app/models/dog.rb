class Dog < ApplicationRecord
  has_many :strolls
  has_many :sitters, through: :strolls
  belongs_to :city
end
