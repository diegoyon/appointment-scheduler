require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/coaches", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Coach. As you add validations to Coach, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Coach.create! valid_attributes
      get coaches_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      coach = Coach.create! valid_attributes
      get coach_url(coach)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_coach_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      coach = Coach.create! valid_attributes
      get edit_coach_url(coach)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Coach" do
        expect {
          post coaches_url, params: { coach: valid_attributes }
        }.to change(Coach, :count).by(1)
      end

      it "redirects to the created coach" do
        post coaches_url, params: { coach: valid_attributes }
        expect(response).to redirect_to(coach_url(Coach.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Coach" do
        expect {
          post coaches_url, params: { coach: invalid_attributes }
        }.to change(Coach, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post coaches_url, params: { coach: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested coach" do
        coach = Coach.create! valid_attributes
        patch coach_url(coach), params: { coach: new_attributes }
        coach.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the coach" do
        coach = Coach.create! valid_attributes
        patch coach_url(coach), params: { coach: new_attributes }
        coach.reload
        expect(response).to redirect_to(coach_url(coach))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        coach = Coach.create! valid_attributes
        patch coach_url(coach), params: { coach: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested coach" do
      coach = Coach.create! valid_attributes
      expect {
        delete coach_url(coach)
      }.to change(Coach, :count).by(-1)
    end

    it "redirects to the coaches list" do
      coach = Coach.create! valid_attributes
      delete coach_url(coach)
      expect(response).to redirect_to(coaches_url)
    end
  end
end
