require 'rails_helper'

# RSpec.describe "Contractors", type: :request do
#   describe 'GET #index' do
#     before(:example) { get contractors_path } 

#     it "is a success" do
#       expect(response).to have_http_status(:ok)
#     end

#     it "renders 'index' template" do
#       expect(response).to render_template('index')
#     end

#     it "assigns all contractors to @contractors" do
#       expect(assigns(:contractors)).to eq(Contractor.all)
#     end
#   end
# end

# RSpec.describe 'Contractors', type: :request do
#   describe 'GET #show' do

#   it "assigns the current_user to @contractor" do
#     get :show, id: contractor.id
#     expect(assigns(:contractor)).to eq contractor
#   end
# end

# end

RSpec.describe ContractorsController, type: :controller do
  it { should route(:get, '/contractors').to(action: :index) }
  it { should route(:get, '/contractors/1').to(action: :show, id:1) }
end
