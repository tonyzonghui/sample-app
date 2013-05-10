require 'spec_helper'

describe 'Static pages', :type => :feature do
<<<<<<< HEAD
  subject { page }

  shared_examples "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_selector('title', text: full_title(page_title)) }
  end

  describe 'Home page', :type => :feature do
    before { visit root_path }
    let(:heading) { 'Sample App' }
    let(:page_title) { '' }

    it_should_behave_like "all static pages"
    it { should_not have_selector('title', text: '| Home') }
  end
  
  describe 'Help page', :type => :feature do
    before { visit help_path }
    let(:heading) { 'Help' }
    let(:page_title) { 'Help' }    

    it_should_behave_like "all static pages"
  end
  
  describe 'About page', :type => :feature do
    before { visit about_path }
    let(:heading) { 'About' }
    let(:page_title) { 'About' }

    it_should_behave_like "all static pages"    
  end
  
  describe 'Contact page', :type => :feature do
    before { visit contact_path }
    let(:heading) { 'Contact' }
    let(:page_title) { 'Contact' }

    it_should_behave_like "all static pages"
=======
  
  subject { page }

  describe 'Home page', :type => :feature do
    before { visit root_path }

    it { should have_selector('h1', text: 'Welcome') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '| Home') }
    
  end
  
  describe 'Help page', :type => :feature do
    
    before { visit help_path }

    it { should have_selector('h1', text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
    
  end
  
  describe 'About page', :type => :feature do
    
    before { visit about_path }

    it { should have_selector('h1', text: 'About') }
    it { should have_selector('title', text: full_title('About')) }
    
  end
  
  describe 'Contact page', :type => :feature do
    
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }

>>>>>>> 5d2c3d130842619022d61f4914f84cbc1e803bcc
  end
  
  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "Help"
    page.should have_selector 'title', text: full_title('Help')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact')
    click_link "Home"
    click_link "Sign up now!"
    page.should have_selector 'title', text: full_title('Sign up')
    click_link "sample app"
    page.should have_selector 'title', text: full_title('')
  end
end
