require 'rails_helper'

RSpec.describe Contractor, type: :model do
  it { should have_many(:properties) }
  it { should have_many(:realtors).through(:properties) }
end