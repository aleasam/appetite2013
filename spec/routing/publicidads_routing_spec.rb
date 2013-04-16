require "spec_helper"

describe PublicidadsController do
  describe "routing" do

    it "routes to #index" do
      get("/publicidads").should route_to("publicidads#index")
    end

    it "routes to #new" do
      get("/publicidads/new").should route_to("publicidads#new")
    end

    it "routes to #show" do
      get("/publicidads/1").should route_to("publicidads#show", :id => "1")
    end

    it "routes to #edit" do
      get("/publicidads/1/edit").should route_to("publicidads#edit", :id => "1")
    end

    it "routes to #create" do
      post("/publicidads").should route_to("publicidads#create")
    end

    it "routes to #update" do
      put("/publicidads/1").should route_to("publicidads#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/publicidads/1").should route_to("publicidads#destroy", :id => "1")
    end

  end
end
