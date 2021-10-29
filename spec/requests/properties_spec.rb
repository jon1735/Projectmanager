require 'rails_helper'

# RSpec.describe PropertiesController, type: :controller do
#   it { should route(:get, '/properties').to(action: :index) }
#   it { should route(:get, '/properties/1').to(action: :show, id:1) }
#   it { should route(:get, '/properties/1/edit').to(action: :edit, id:1) }
#   it { should route(:delete, '/properties/1').to(action: :destroy, id:1) }
#   it { should route(:post, '/properties').to(action: :create) }
#   it { should route(:patch, '/properties/1').to(action: :update, id:1) }
# end
#these go in a routes folder. for testing


RSpec.describe PropertiesController, type: :controller do
  describe "GET #show" do
    it "renders the show template", :aggregate_failures do
      property = create_property

      get :show, params: { id: property.id }

      expect(response).to render_template(:show)
    end
  end

    it "assigns @property to the correct instance" do
      property = create_property

      get :show, params: { id: property.id }

      expect(assigns[:property]).to eq property
    end

    it "the response status is a success" do
      property = create_property

      get :show, params: { id: property.id }

      expect(response.status).to eq 200
    end
end



def create_property
  property = Property.create!(
    address: "1314 astor street, norristown, PA",
    vacancy: true,
    lawn_care: "needs to be maintained",
    plumbing: "needs to be maintained",
    electrical: "needs to be maintained",
    realtor_id: create_realtor.id,
    contractor_id: create_contractor.id
  )
end
#need to do create_contractor.id because we need to call the method written down below.
#the attribute of realtor_id didn't know where to look for the method, so we had to be
#explicit with where we were drawing this information from. (this info pertains to lines 15-24)

def create_realtor
  realtor = Realtor.create!(
    name: "joe johnson"
  )
end

def create_contractor
  contractor = Contractor.create!(
  name: "melo property services",
  lawn_care: true,
  plumbing: true,
  electrical: true
  )
end
