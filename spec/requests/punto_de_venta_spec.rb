require 'spec_helper'

describe "PuntoDeVenta" do
  describe "GET /punto_de_venta" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get punto_de_venta_path
      response.status.should be(200)
    end
  end
end
