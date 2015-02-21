require 'rails_helper'

RSpec.describe "training_plans/index", type: :view do
  before(:each) do
    assign(:training_plans, [
      TrainingPlan.create!(
        :name => "Name",
        :description => "MyText"
      ),
      TrainingPlan.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of training_plans" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
