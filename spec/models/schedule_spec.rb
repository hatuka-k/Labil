require 'rails_helper'

RSpec.describe 'Schedule', :type => :model do
  it "test?" do 
    #nov = Schedule.new(member_id: '', event_start: '2007-02-04T16:20:44+09:00', event_end: '2007-02-04T16:20:44+09:00', venue: '', flag: 0)
    #nov = Schedule.new(member_id: 2, event_start: 'd', event_end: '2007-02-04T16:20:44+09:00', venue: 'W000', flag: 0)
    nov = Schedule.new(member_id: nil)
    expect(nov).to_not be_valid
    #expect(nov.errors[:member_id]).to be_present 
    #expect(nov.errors[:event_start]).to be_present 
    #expect(nov.errors[:event_start]).to be_present 
  end


  it "All OK" do
    schedule = Schedule.new(member_id: 2, event_start: '2007-02-04T16:20:44+09:00', event_end: '2007-02-04T16:20:44+09:00', venue: 'W101', flag: 0, title 'TA')
    expect(schedule).to be_valid 
    #schedule.valid?
    #expect(schedule.errors[:schedule]).to be_present
  end

  

 
end