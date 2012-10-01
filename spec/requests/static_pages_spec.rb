require 'spec_helper'

describe "Static pages" do

  subject { page }
  #
  describe "Home page" do
    before { visit root_path }
    
    it { should have_selector('h1',    text: 'Wake Up Fit') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
  end
  
  ##
  describe "Contact page" do 
    before { visit contact_path }
    
    it { should have_selector('h1',     text: 'Contact Us') }
    it { should have_selector('title',  text: full_title('Contact Us')) }
  end
    
  ##
  describe "FAQ page" do
    before { visit faq_path }
    
    it { should have_selector('h1',     text: 'FAQ') }
    it { should have_selector('title',  text: full_title('FAQ')) }
  end
  
  ##
  describe "About page" do
    before { visit about_path }
      it { should have_selector('h1',     text: 'About Me') }
      it { should have_selector('title',  text: full_title('About Me')) }
  end
  #
end
  
  
  
  