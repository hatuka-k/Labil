require 'rails_helper'

describe "statusクラスのテスト" do
  describe "Association" do
    it { should belong_to(:member)}
    it { should belong_to(:location)}
  end

  before "memberとlocationの登録" do
    member = Member.new(name: 'Suzuki')
    location = Location.new(name: '在室')
  end

  it "member_idとuser_idの取得" do
    member = Member.find(1)
    status = Status.new(member_id: member.id, location_id: location.id)
    expect(status.member_id).to eq(member.id)
    expect(status.location_id).to eq(location.id)
  end
end
