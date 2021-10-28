require 'rails_helper'

RSpec.describe Realtor, type: :model do
  it { should have_many(:properties) }
  it { should have_many(:contractors).through(:properties) }
end