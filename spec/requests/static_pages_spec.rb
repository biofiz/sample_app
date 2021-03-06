require 'rails_helper'

describe "Static pages" do

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
  subject { page }

  describe "Home page" do
    before { visit root_path }
    it { should have_content('Sample App') }
    it { should have_title("#{base_title}") }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_content('Help')}
    it { should have_title("Help | #{base_title}")}
  end

  describe "About page" do
    before { visit about_path }
    it { should have_content('About')}
    it { should have_title("About | #{base_title}")}
  end

  describe "Contact page" do
    before {visit contact_path}
    it {should have_content('Contact')}
    it { should have_title("Contact | #{base_title}")}
  end
end


