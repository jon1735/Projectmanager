class Realtor < ApplicationRecord
  has_many :properties
  has_many :contractors, through: :properties
end
