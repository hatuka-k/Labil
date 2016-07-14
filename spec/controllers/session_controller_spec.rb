require 'rails_helper'

describe 'ログインとログアウトのテスト', type: :feature do
  before do
    Member.create!(name: 'foo', email: 'foo@example.com',password: '0000', password_confirmation: '0000')
  end

  it 'ログインページを開く' do
    visit root_path
    click_on 'ログイン'
    expect(page).to have_content 'Sign in'
  end

  it 'ログインする' do
    visit signin_path
    fill_in 'Email', with: 'foo@example.com'
    fill_in 'Password', with: '0000'

    click_on 'Save Session'

    expect(page).to have_content 'foo'
  end

  it 'ログアウトする' do
    visit signin_path
    fill_in 'Email', with: 'foo@example.com'
    fill_in 'Password', with: '0000'

    click_on 'Save Session'

    click_on 'ログアウト'
    
    expect(page).to have_no_content 'foo'
  end

  it 'ログイン時にパスワードを間違える' do
    visit signin_path
    fill_in 'Email', with: 'foo@example.com'
    fill_in 'Password', with: '1111'

    click_on 'Save Session'

    expect(page).to have_content 'Invalid email/password combination'
  end
end
