require 'rails_helper'

RSpec.describe "messages/index", type: :view do
  before do
    Member.create!(name: 'foo', email: 'foo@example.com',
                password: '0000', password_confirmation: '0000')
  end

  feature 'in the Listing Messages screen ' do
    scenario 'to index' do
      visit messages_path
      expect(page).to have_content 'Listing'
    end
  end
  
  feature 'in the Listing Messages screen ' do
    scenario 'back to topView' do
      visit messages_path
      expect(page).to have_content 'Listing'
      click_link "Back TopView"
      expect(page).to have_content 'Lab'
    end
  end
  
  feature 'in the Listing Messages screen ' do
    scenario 'create messages' do
      visit messages_path
      expect(page).to have_content 'Listing'
      click_link "New Message"
      fill_in 'Email', with: 'foo@example.com'
      fill_in 'Password', with: '0000'
      click_on 'Save Session'
      click_on 'メッセージ一覧'
      click_on 'New Message'
      expect(page).to have_content 'Message'
      fill_in 'Message', with: 'capybara_Test'
      click_on 'Create Message'
      expect(page).to have_content 'Back'
      click_on 'Back'
      expect(page).to have_content 'capybara_Test'
    end
  end
  
end
