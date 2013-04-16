require "spec_helper"

describe OfrecesController do
  describe "routing" do

    it "routes to #index" do
      get("/ofreces").should route_to("ofreces#index")
    end

    it "routes to #new" do
      get("/ofreces/new").should route_to("ofreces#new")
    end

    it "routes to #show" do
      get("/ofreces/1").should route_to("ofreces#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ofreces/1/edit").should route_to("ofreces#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ofreces").should route_to("ofreces#create")
    end

    it "routes to #update" do
      put("/ofreces/1").should route_to("ofreces#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ofreces/1").should route_to("ofreces#destroy", :id => "1")
    end

  end
end
