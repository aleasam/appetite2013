require "spec_helper"

describe PuntoDeVentaController do
  describe "routing" do

    it "routes to #index" do
      get("/punto_de_venta").should route_to("punto_de_venta#index")
    end

    it "routes to #new" do
      get("/punto_de_venta/new").should route_to("punto_de_venta#new")
    end

    it "routes to #show" do
      get("/punto_de_venta/1").should route_to("punto_de_venta#show", :id => "1")
    end

    it "routes to #edit" do
      get("/punto_de_venta/1/edit").should route_to("punto_de_venta#edit", :id => "1")
    end

    it "routes to #create" do
      post("/punto_de_venta").should route_to("punto_de_venta#create")
    end

    it "routes to #update" do
      put("/punto_de_venta/1").should route_to("punto_de_venta#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/punto_de_venta/1").should route_to("punto_de_venta#destroy", :id => "1")
    end

  end
end
