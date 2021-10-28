require 'rails_helper'

RSpec.describe Property, type: :model do
  it { should belong_to(:contractor) }
  it { should belong_to(:realtor) }
  it { should allow_value(%w(true false)).for(:vacancy) }

end