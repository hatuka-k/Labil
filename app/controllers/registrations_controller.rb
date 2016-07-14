class RegistrationsController < ApplicationController
  def index
	  @locations = Location.all
	  @stat = Status.find(params[:id])
	  @members = Member.all
	  @name = Member.find(@stat.member_id)
	  @nloc = Location.find(@stat.location_id)
	  @zaishitsu = "/registrations/zaishitsu/"+params[:id]
	  @gakunai = "/registrations/gakunai/"+params[:id]
	  @gaishutsu = "/registrations/gaishutsu/"+params[:id]
	  @kitaku = "/registrations/kitaku/"+params[:id]
  end
  
  #put registrations/zaishitsu  
  def zaishitsu
    @stat = Status.find(params[:id])
    @stat.location_id = 1
    if @stat.save
      redirect_to topviews_index_path
    end
  end
  def gakunai
    @classrooms = Location.where("category = '2'")
    @labos = Location.where("category = '3'")
    @stat = Status.find(params[:id])
    @path = "/registrations/gakunai/"+params[:id]+"/regist/"
  end
  def gaishutsu
    @ikisakis = Location.where("category = '4'")
    @stat = Status.find(params[:id])
    @path = "/registrations/gaishutsu/"+params[:id]+"/regist/"
  end
  def regist
    @stat = Status.find(params[:id])
    @stat.location_id =params[:loc]
    if @stat.save
      redirect_to topviews_index_path
    end
  end
  def kitaku
    @stat = Status.find(params[:id])
    @stat.location_id = 2;
    if @stat.save
      redirect_to topviews_index_path
    end
  end

  def new
    @locations = Location.all
    
  end
end
