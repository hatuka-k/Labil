class TopviewsController < ApplicationController
  def index
    @statuses = Status.all
    @members = Member.all
    @locations = Location.all
    @messages = Message.all
    
    @stats = Array.new
    @statuses.each do |status|
      @stat = Hash.new
      @stat[:member] = @members.find(status.member_id).name
      @stat[:location] = @locations.find(status.location_id).name
      if defined?( @messages.find_by(member_id: status.member_id).message)
        @stat[:message] = @messages.find_by(member_id: status.member_id).message
      else
         @stat[:message] = nil
      end
      @stats.push(@stat)
    end

  end
end
