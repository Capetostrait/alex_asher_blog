require 'spec_helper'

describe "Static pages" do

  subject { page }
  #
  shared_examples_for "all static pages" do
      it { should have_selector('h1',    text: heading) }
      it { should have_selector('title', text: full_title(page_title)) }
    end

    describe "Home page" do
      before { visit root_path }
      let(:heading)    { 'Wake Up Fit' }
      let(:page_title) { '' }

      it_should_behave_like "all static pages"
      it { should_not have_selector 'title', text: '| Home' }
    end
    
    describe "Contact page" do 
      before { visit contact_path }
      let(:heading)   {'Contact Us'}
      let(:page_title) {'Contact Us'}
      
      it_should_behave_like "all static pages"
    end  
    
    describe "FAQ" do 
      before { visit faq_path }
      let(:heading)   {'FAQ'}
      let(:page_title) {'FAQ'}
      
      it_should_behave_like "all static pages"
    end
    
    describe "About" do 
      before { visit about_path }
      let(:heading)   {'About Me'}
      let(:page_title) {'About Me'}

      it_should_behave_like "all static pages"
    end
    
end
  
  
  
  