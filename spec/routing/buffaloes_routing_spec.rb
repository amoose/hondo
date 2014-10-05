require "spec_helper"

describe BuffaloesController do
  describe "routing" do

    it "routes to #index" do
      get("/buffaloes").should route_to("buffaloes#index")
    end

    it "routes to #new" do
      get("/buffaloes/new").should route_to("buffaloes#new")
    end

    it "routes to #show" do
      get("/buffaloes/1").should route_to("buffaloes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/buffaloes/1/edit").should route_to("buffaloes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/buffaloes").should route_to("buffaloes#create")
    end

    it "routes to #update" do
      put("/buffaloes/1").should route_to("buffaloes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/buffaloes/1").should route_to("buffaloes#destroy", :id => "1")
    end

  end
end
