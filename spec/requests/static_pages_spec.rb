require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "Ruby" }

  describe "User pages" do
    subject { page }

    describe "signup page" do
      before { visit signup_path }

      it { should have_selector('h1', text: 'Sign up') }
      it { should have_selector('title', text: 'Sign up') }
    end
  end
  
  describe "Home page" do

  	it "should have the content 'Sample App'" do
  		visit root_path
  		page.should have_selector('h1', :text => 'Sample App')
  	end

  	it "should have the right title" do
  		visit root_path
  		page.should have_selector('title', :text => " | Home")
    end
    
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit help_path
  		page.should have_selector('h1', :text => 'Help')
  	end
  	it "should have the right title" do
  		visit help_path
  		page.should have_selector('title', :text => ' | Help')
  	end
  end

  describe "About page" do
  	it "should have the content 'About Us'" do
  		visit about_path
  		page.should have_selector('h1', :text => 'About Us')
  	end
  	it "should have the right title" do
  		visit about_path
  		page.should have_selector('title', :text => ' | About')
  	end
  end

  describe "Contact us page" do
    it "should have the content 'Contact Us'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact Us')
    end

    it "should have the right title" do
      visit contact_path
      page.should have_selector('title', :text => 'Contact')
    end
  end

end