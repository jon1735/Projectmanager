class Property < ApplicationRecord
  belongs_to :contractor
  belongs_to :realtor
end
