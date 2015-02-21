require 'rails_helper'

RSpec.describe "training_plans/show", type: :view do
  before(:each) do
    @training_plan = assign(:training_plan, TrainingPlan.create!(
      :name => "Name",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
  end
end
