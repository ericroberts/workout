require "rails_helper"

RSpec.describe PagesController, type: :controller do
  describe "GET #home" do
    subject { get :home }

    it "renders the home template" do
      subject
      expect(response).to render_template "pages/home"
    end
  end
end
