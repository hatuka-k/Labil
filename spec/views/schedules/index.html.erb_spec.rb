require 'rails_helper'

RSpec.describe "schedules/index", type: :view do
  before do
    render 'schedules/index'
  end
  it "タイトルを表示" do
    assert_select "h1", "My schedules"
  end
  it "リストを表示" do
    assert_select "tr>th"
    assert_select "th", 5
    assert_select "tr>td"
    assert_select "td", 7
  end
end
