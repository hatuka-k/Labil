class RegistrationsController < ApplicationController
  def index
	  @locations = Location.all
  end
end
