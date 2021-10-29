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

  describe "POST #create" do
    describe "with valid attributes" do
      it "successfully creates a new record with all params passed", :aggregate_failures do
        expect {post :create, params: valid_create_property_params }.to change(Property, :count).by(1)

        new_property = Property.find_by(lawn_care: "needs to be maintained")

        expect(new_property).to be_present
      end

      it "redirects to a different page that gets updated with the recently created info" do
        post :create, params: valid_create_property_params

        new_property = Property.find_by(lawn_care: "needs to be maintained")

        expect(response).to redirect_to property_path(new_property)
      end
    end
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

def valid_create_property_params
  {
    property: {
      address: "1314 astor street, norristown, PA",
      vacancy: true,
      lawn_care: "needs to be maintained",
      plumbing: "needs to be maintained",
      electrical: "needs to be maintained",
      contractor_id: create_contractor.id,
      realtor_id: create_realtor.id
    }
  }
end