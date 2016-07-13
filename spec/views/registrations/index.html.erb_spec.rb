require 'rails_helper'

RSpec.describe "registrations/index", type: :view do
  before do
    @user = FactoryGirl.build(:member)
    @location = FactoryGirl.build(:location)
    @user.save
    @location.save
  end
 
  it "名前さん、今どこですか" do
    assign(:member, :location)
    render :template => "registrations/index.html.erb"
    except(rendered).to match /tsukinaga/
  end
end