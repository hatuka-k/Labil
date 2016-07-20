Location.create( :name=> '在室', :category=> '0')
Location.create( :name=> '帰宅', :category=> '1')
Location.create( :name=> 'W101', :category=> '2')
Location.create( :name=> 'W102', :category=> '2')
Location.create( :name=> 'W103', :category=> '2')
Location.create( :name=> 'W211', :category=> '2')
Location.create( :name=> 'W212', :category=> '2')
Location.create( :name=> 'W213', :category=> '2')
Location.create( :name=> 'W311', :category=> '2')
Location.create( :name=> '共通実験室', :category=> '2')
Location.create( :name=> '情報ラボ', :category=> '2')
Location.create( :name=> 'ALラボ', :category=> '2')
Location.create( :name=> '小池(崇)研', :category=> '3')
Location.create( :name=> '藤田研', :category=> '3')
Location.create( :name=> '学食', :category=> '4')
Location.create( :name=> 'スエヒロ', :category=> '4')
Location.create( :name=> '図書館', :category=> '4')


ActiveRecord::Base.transaction do
location = Location.last
member = Member.new(name: "Suzuki", email: "test@test.com", password:"0000", password_confirmation: "0000")
member.save!
member1 = Member.new(name: "Takahashi", email: "test1@test.com", password:"0000", password_confirmation: "0000")
member1.save!
member2 = Member.new(name: "Tanaka", email: "test2@test.com", password:"0000", password_confirmation: "0000")
member2.save!
member = Member.find_by_name("Suzuki")
status = Status.new(member_id: member.id, location_id: location.id)
status.save!
member = Member.find_by_name("Takahashi")
status = Status.new(member_id: member.id, location_id: location.id)
status.save!
member = Member.find_by_name("Tanaka")
status = Status.new(member_id: member.id, location_id: location.id)
status.save!
end

Message.create( member_id: 1, message: "Hello Everyone!")
Message.create( member_id: 2, message: "This is test sentence")
Message.create( member_id: 1, message: "I wanna go home...")
Message.create( member_id: 3, message: "I wanna go home too")


Schedule.create(:member_id => 1, :event_start => 'Mon, 30 May 2016 09:30:00', :event_end => 'Mon, 30 May 2016 11:00:00', :venue => 'A-1', :title => '休憩')
Schedule.create(:member_id => 1, :event_start => 'Mon, 30 May 2016 13:30:00', :event_end => 'Mon, 30 May 2016 15:00:00', :venue => 'W101', :title => '講義')
Schedule.create(:member_id => 2, :event_start => 'Mon, 30 May 2016 09:30:00', :event_end => 'Mon, 30 May 2016 11:00:00', :venue => '藤田研', :title => 'ゼミ')
Schedule.create(:member_id => 2, :event_start => 'Mon, 30 May 2016 13:30:00', :event_end => 'Mon, 30 May 2016 15:00:00', :venue => 'W212', :title => '講義')
