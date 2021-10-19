class Contractor < ApplicationRecord
  has_many :properties
  has_many :realtors, through: :properties
end
