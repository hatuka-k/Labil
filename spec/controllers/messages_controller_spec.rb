require 'rails_helper'

RSpec.describe MessagesController, type: :controller do
  after(:all) do
    DatabaseCleaner.clean
  end
  
  describe "GET #index" do
    it "should be successful" do
      get :index
      expect(response).to be_success
    end
  end
  
  describe "GET #show"
  describe "GET #new"
  describe "GET #edit"
  describe "POST #create"
  describe "DELETE #destroy"

end
