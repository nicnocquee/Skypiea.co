require 'spec_helper'

describe "Static Pages" do
  let(:base_title){"Skypiea"}

  describe "About page" do
    it "should have content 'About'" do
      visit '/static_pages/about'
      expect(page).to have_content('About')
    end

    it "should have the right title" do 
    	visit '/static_pages/about'
    	expect(page).to have_title("#{base_title} | About")
    end
  end

  describe "Terms page" do
    it "should have content 'Terms of Use'" do
      visit '/static_pages/term'
      expect(page).to have_content('Terms of Use')
    end

    it "should have the right title" do 
    	visit '/static_pages/term'
    	expect(page).to have_title("#{base_title} | Terms")
    end
  end
end
