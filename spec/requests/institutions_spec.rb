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

RSpec.describe "/institutions", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # Institution. As you add validations to Institution, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Institution.create! valid_attributes
      get institutions_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      institution = Institution.create! valid_attributes
      get institution_url(institution)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_institution_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      institution = Institution.create! valid_attributes
      get edit_institution_url(institution)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Institution" do
        expect {
          post institutions_url, params: { institution: valid_attributes }
        }.to change(Institution, :count).by(1)
      end

      it "redirects to the created institution" do
        post institutions_url, params: { institution: valid_attributes }
        expect(response).to redirect_to(institution_url(Institution.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Institution" do
        expect {
          post institutions_url, params: { institution: invalid_attributes }
        }.to change(Institution, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post institutions_url, params: { institution: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested institution" do
        institution = Institution.create! valid_attributes
        patch institution_url(institution), params: { institution: new_attributes }
        institution.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the institution" do
        institution = Institution.create! valid_attributes
        patch institution_url(institution), params: { institution: new_attributes }
        institution.reload
        expect(response).to redirect_to(institution_url(institution))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        institution = Institution.create! valid_attributes
        patch institution_url(institution), params: { institution: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested institution" do
      institution = Institution.create! valid_attributes
      expect {
        delete institution_url(institution)
      }.to change(Institution, :count).by(-1)
    end

    it "redirects to the institutions list" do
      institution = Institution.create! valid_attributes
      delete institution_url(institution)
      expect(response).to redirect_to(institutions_url)
    end
  end
end
