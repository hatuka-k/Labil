require 'rails_helper'

RSpec.describe "topviews/index", type: :view do
  before do
    Location.create( :name=> '在室', :category=> '0')
    Location.create( :name=> '帰宅', :category=> '1')
    Location.create( :name=> 'W101', :category=> '2')
    Location.create( :name=> 'W102', :category=> '2')
    Member.create!(name: 'foo', email: 'foo@example.com',
                password: '0000', password_confirmation: '0000')
    Status.create!(member_id: Member.find_by_name("foo").id, location_id: '1')
    Message.create( member_id: Member.find_by_name("foo").id, message: "Hello Everyone!")
  end
  
  feature '画面の表示' do
    scenario 'メッセージの表示' do
      member = Member.find_by_name("foo")
      m = Message.find_by_member_id(member.id).message
      visit current_path
      button = find("#message")
       expect(button['data-content']).to eq m
    end
    
    scenario 'statusの切り替え' do
      member = Member.find_by_name("foo")
      s = Status.find(member.id)
      s.location_id = 3 
      visit current_path
      expect(page).to have_selector '#foo' ,text: Location.find_by_name(s.location_id)
    end
    
    scenario 'スケジュールの反映' do
      member = Member.find_by_name("foo")
      today = DateTime.now
      start_d = today+Rational(-1, 24)
      end_d = today+Rational(1, 24)
      s =Schedule.create(:member_id => member.id, :event_start => start_d, :event_end => end_d, :venue => 3)
      #W102への変更
       visit current_path
       expect(page).to have_selector '#foo' ,text: Location.find_by_name(3)
     end
  end
end
