require 'rails_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/'
      expect(page).to have_content('Sample App')
      expect(page).to have_title('Home | Ruby on Rails Tutorial Sample App')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
      expect(page).to have_title('Help | Ruby on Rails Tutorial Sample App')
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
      expect(page).to have_title('About | Ruby on Rails Tutorial Sample App')
    end
  end
end


