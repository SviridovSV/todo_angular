require 'rails_helper'

feature 'Sign up', js: true do
  given(:user) { build(:user) }
  background { visit '#!/signup' }

  scenario 'sign up with valid data' do
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign up'

    expect(page).to have_content 'Log Out'
    expect(page).to have_content 'Add TODO List'
  end

  scenario 'when invalid data' do
    fill_in 'Email', with: 'qwe@qwe'
    fill_in 'Password', with: '123'
    click_button 'Sign up'

    expect(page).to have_content 'Password is too short (minimum is 6 characters)'

    user = create(:user)
    fill_in 'Email', with: user.email
    fill_in 'Password', with: '123qwe'
    click_button 'Sign up'

    expect(page).to have_content 'Email has already been taken'
  end

  scenario 'log in link' do
    click_link 'Log In'

    expect(page).to have_button 'Log in'
  end
end
