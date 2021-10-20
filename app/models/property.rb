class Property < ApplicationRecord
  belongs_to :contractor
  belongs_to :realtor

  validates :vacancy, inclusion: { in: [true, false] }
end
