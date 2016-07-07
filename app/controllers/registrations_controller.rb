class RegistrationsController < ApplicationController
  def index
	  @locations = Location.where(category: 0)
	  @stat = Status.find(params[:id])
	  @members = Member.all
	  @user = Status.find(1)
	  @name = Member.find(@stat.member_id)
	  @user.update_attribute(:location_id, 0)
  end
  

  def new
    @locations = Location.all
    
  end
end
