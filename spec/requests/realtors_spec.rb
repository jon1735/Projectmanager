require 'rails_helper'

# RSpec.describe "Realtors", type: :request do
#   describe "GET /index" do
#     pending "add some examples (or delete) #{__FILE__}"
#   end
# end

RSpec.describe RealtorsController, type: :controller do
  it { should route(:get, '/realtors').to(action: :index) }
  it { should route(:get, '/realtors/1').to(action: :show, id:1) }
end
