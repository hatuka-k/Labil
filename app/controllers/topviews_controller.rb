class TopviewsController < ApplicationController
  def index
    @statuses = Status.all
    @members = Member.all
    @locations = Location.all
    @messages = Message.all
    @schedules = Schedule.all

    @stats = Array.new
    @statuses.each do |status|
      @stat = Hash.new
      @stat[:id] = status.id
      @stat[:member] = @members.find(status.member_id).name
      @stat[:location] = @locations.find(status.location_id).name
      @stat[:location_category] = @locations.find(status.location_id).category

      @ownsches = @schedules.where(member_id: status.member_id)
      @ownsches.each do |sche|
        if(sche.event_start < DateTime.now && sche.event_end > DateTime.now)
          @stat[:location] = @locations.find(sche.venue).name
          @stat[:location_category] = @locations.find(sche.venue).category
        end
      end

      if defined?( @messages.find_by(member_id: status.member_id).message)
        @stat[:message] = @messages.find_by(member_id: status.member_id).message
      else
        @stat[:message] = nil
      end
      @stats.push(@stat)
    end

  end
end
