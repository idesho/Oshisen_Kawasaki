require "rails_helper"

RSpec.describe OfurosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/ofuros").to route_to("ofuros#index")
    end

    it "routes to #new" do
      expect(get: "/ofuros/new").to route_to("ofuros#new")
    end

    it "routes to #show" do
      expect(get: "/ofuros/1").to route_to("ofuros#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/ofuros/1/edit").to route_to("ofuros#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/ofuros").to route_to("ofuros#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/ofuros/1").to route_to("ofuros#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/ofuros/1").to route_to("ofuros#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/ofuros/1").to route_to("ofuros#destroy", id: "1")
    end
  end
end
