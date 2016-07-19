require 'rails_helper'

describe "Memberクラスのテスト" do
  describe "Association" do
   it { should have_many(:statuses) }
   it { should have_many(:locations) }
  end

  context "ユーザー登録がされている場合" do
    before "ユーザーの登録" do
      member = Member.new(name: 'Suzuki', email: 'test@test.com', password: '0000', password_confirmation: '0000')
    end
  
    it "nameがセットされていること" do
      expect(member.name).to be_valid
    end

    it "passwordがセットされていること" do
      expect(member.password).to be_valid
    end
  end

  context "nameが設定されていない場合" do
    before do
      member = Member.new(name: '', email: 'test@test.com', password: '0000', password_confirmation: '0000')
    end

    it "nameが入って無ければ無効" do
      expect(member.name).to_not be_valid
      expect(member.errors[:name]).to be_present #nameカラムに関するエラーメッセージの配列を返す
    end
  end

  context "passwordが設定されていない場合" do
    before "ユーザーの登録" do
      member = Member.new(name: 'Suzuki', email: 'test@test.com', password: '', password_confirmation: '')
    end

    it "passwordが入って無ければ無効" do
      expect(member.password).to_not be_valid
      expect(member.errors[:password]).to be_present
    end
  end
end
