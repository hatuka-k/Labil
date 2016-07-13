require 'rails_helper'

RSpec.describe RegistrationsController, type: :controller do
  describe "PUT #index" do
    before do
      @locations = Location.all
      @stat = Status.find(1)
      @members = Member.all
      @name = Member.find(@stat.member_id)
      @nloc = Location.find(@stat.location_id)
      @zaishitsu = "/registrations/zaishitsu/"+1
      @gakunai = "/registrations/gakunai/"+1
      @gaishutsu = "/registrations/gaishutsu/"+1
      @kitaku = "/registrations/kitaku/"+1
      put 'index'
    end
    it "should be successful" do
      response.should be_success
    end
  end
end
