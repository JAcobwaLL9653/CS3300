require "rails_helper"
#require "/root/CS3300/spec/support/controller_macros.rb"

RSpec.describe ProjectsController, type: :controller do

  context "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_truthy
    end
  end

  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      sign_in @user, scope:  :admin
      get :show, params: { id: project }
      expect(response).to be_truthy
    end
  end
end
