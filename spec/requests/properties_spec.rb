require 'rails_helper'

# RSpec.describe "Properties", type: :request do
#   describe "GET /index" do
#     pending "add some examples (or delete) #{__FILE__}"
#   end
# end

RSpec.describe PropertiesController, type: :controller do
  it { should route(:get, '/properties').to(action: :index) }
  it { should route(:get, '/properties/1').to(action: :show, id:1) }
  it { should route(:get, '/properties/1/edit').to(action: :edit, id:1) }
  it { should route(:delete, '/properties/1').to(action: :destroy, id:1) }
  it { should route(:post, '/properties').to(action: :create) }
  it { should route(:patch, '/properties/1').to(action: :update, id:1) }
end

# RSpec.describe PropertiesController, type: :controller do
#   describe 'PATCH#update' do
#     it "redirects_to :action => :show" do
#       expect(@property).to redirect_to :action => :show, :id => assigns(:property).id

# end
