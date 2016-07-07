Location.create( :name=> '在室', :category=> '0')
Location.create( :name=> '学内', :category=> '0')
Location.create( :name=>'外出', :category=> '0')
Location.create( :name=> '帰宅', :category=> '0')
Location.create( :name=> 'W101', :category=> '1')
Location.create( :name=> 'W102', :category=> '1')
Location.create( :name=> 'W103', :category=> '1')
Location.create( :name=> 'W211', :category=> '1')
Location.create( :name=> 'W212', :category=> '1')
Location.create( :name=> 'W213', :category=> '1')
Location.create( :name=> 'W311', :category=> '1')
Location.create( :name=> '共通実験室', :category=> '1')
Location.create( :name=> '情報ラボ', :category=> '1')
Location.create( :name=> 'ALラボ', :category=> '1')
Location.create( :name=> '小池(崇)研', :category=> '2')
Location.create( :name=> '藤田研', :category=> '2')
Location.create( :name=> '学食', :category=> '3')
Location.create( :name=> 'スエヒロ', :category=> '3')
Location.create( :name=> '図書館', :category=> '3')


ActiveRecord::Base.transaction do
location = Location.last
member = Member.new(name: "test", email: "test@test.com", password:"0000", password_confirmation: "0000")
member.save!
member = Member.find_by_name("test")
status = Status.new(member_id: member.id, location_id: location.id)
status.save!
end

Message.create( member_id: 1, message: "test_1")
Message.create( member_id: 2, message: "test_2")
Message.create( member_id: 1, message: "test_1snd")
Message.create( member_id: 3, message: "test_3")

Schedule.create(:member_id => 1, :event_start => 'Mon, 30 May 2016 09:30:00', :event_end => 'Mon, 30 May 2016 11:00:00', :venue => 'A-1')
Schedule.create(:member_id => 1, :event_start => 'Mon, 30 May 2016 13:30:00', :event_end => 'Mon, 30 May 2016 15:00:00', :venue => 'W101')
Schedule.create(:member_id => 2, :event_start => 'Mon, 30 May 2016 09:30:00', :event_end => 'Mon, 30 May 2016 11:00:00', :venue => '藤田研')
Schedule.create(:member_id => 2, :event_start => 'Mon, 30 May 2016 13:30:00', :event_end => 'Mon, 30 May 2016 15:00:00', :venue => 'W212')
