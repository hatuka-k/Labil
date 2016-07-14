require 'spec_helper'

RSpec.describe "Memberのテスト", :type => :model do
  it "nameがはいって無ければ無効" do
    noname = Member.create!(name:'', email: "test3@test.com", password:"0000", password_confirmation: "0000")
    expect(noname).to include("can't be blank")
  end

  it "passwordとpassword_confirmationが異なる場合に無効" do
    bad_password = Member.create!(name:'Hosei Tarou', email: "test3@test.com", password:"0000", password_confirmation: "0001")
    expect(bad_password).to include("Password confirmation doesn't match Password")
  end

  it "全てに正しい値が入っていれば有効" do
    member = Member.create!(name:'Hosei Tarou', email: "test3@test.com", password:"0000", password_confirmation: "0000")
    expect(member).to be_valid 
  end

  it "同じメールアドレスは無効" do
    member_a = Member.create!(name:'Hosei Tarou', email: "test4@test.com", password:"0000", password_confirmation: "0000")
    member_b = Member.create!(name:'Hosei Tarou', email: "test4@test.com", password:"0000", password_confirmation: "0000")
    expect(member_b).to include("Email has already been taken") 
  end
end
