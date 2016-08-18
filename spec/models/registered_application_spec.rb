require 'rails_helper'

RSpec.describe RegisteredApplication, type: :model do
  let(:user) { FactoryGirl.create :user }
  let(:registered_application) { FactoryGirl.create :registered_application }

  it { is_expected.to belong_to(:user) }

  describe "attributes" do
    it "has appname and url attributes" do
      expect(registered_application).to have_attributes(appname: registered_application.appname)
      expect(registered_application).to have_attributes(url: registered_application.url)
    end
  end
end
