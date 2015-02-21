require 'rails_helper'

RSpec.describe "training_plans/new", type: :view do
  before(:each) do
    assign(:training_plan, TrainingPlan.new(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new training_plan form" do
    render

    assert_select "form[action=?][method=?]", training_plans_path, "post" do

      assert_select "input#training_plan_name[name=?]", "training_plan[name]"

      assert_select "textarea#training_plan_description[name=?]", "training_plan[description]"
    end
  end
end
