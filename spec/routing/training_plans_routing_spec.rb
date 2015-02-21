require "rails_helper"

RSpec.describe TrainingPlansController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/training_plans").to route_to("training_plans#index")
    end

    it "routes to #new" do
      expect(:get => "/training_plans/new").to route_to("training_plans#new")
    end

    it "routes to #show" do
      expect(:get => "/training_plans/1").to route_to("training_plans#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/training_plans/1/edit").to route_to("training_plans#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/training_plans").to route_to("training_plans#create")
    end

    it "routes to #update" do
      expect(:put => "/training_plans/1").to route_to("training_plans#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/training_plans/1").to route_to("training_plans#destroy", :id => "1")
    end

  end
end
