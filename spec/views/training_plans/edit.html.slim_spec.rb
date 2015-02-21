require 'rails_helper'

RSpec.describe "training_plans/edit", type: :view do
  before(:each) do
    @training_plan = assign(:training_plan, TrainingPlan.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit training_plan form" do
    render

    assert_select "form[action=?][method=?]", training_plan_path(@training_plan), "post" do

      assert_select "input#training_plan_name[name=?]", "training_plan[name]"

      assert_select "textarea#training_plan_description[name=?]", "training_plan[description]"
    end
  end
end
