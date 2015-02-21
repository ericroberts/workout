require 'rails_helper'

RSpec.describe "TrainingPlans", type: :request do
  describe "GET /training_plans" do
    it "works! (now write some real specs)" do
      get training_plans_path
      expect(response).to have_http_status(200)
    end
  end
end
