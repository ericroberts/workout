require 'rails_helper'

RSpec.describe User, type: :model do
  subject { build_stubbed :user }

  context "instance methods" do
    describe "#admin?" do
      before { subject.admin = admin }

      context "when admin is true" do
        let(:admin) { true }

        it "should be true" do
          expect(subject.admin?).to be true
        end
      end

      context "when admin is false" do
        let(:admin) { false }

        it "should be false" do
          expect(subject.admin?).to be false
        end
      end
    end
  end

  context "class methods" do
    subject { User }

    describe ".admin" do
      let!(:regular_user) { create :user }
      let!(:admin_user) { create :user, :admin }

      it "should return only the admin user" do
        expect(subject.admin).to eq [admin_user]
      end
    end
  end
end
