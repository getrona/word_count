require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word frequency path', {:type => :feature}) do
  it('returns the frequency of a string in a sentence') do
    visit('/')
    fill_in('user_input', :with => 'cat')
    fill_in('user_input2', :with => 'cat cat cat cat')
    click_button('Submit')
    expect(page).to have_content('Word Input: "cat" String Input: "cat cat cat cat" Output: "4"')
  end
end
