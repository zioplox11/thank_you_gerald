require 'spec_helper'


  describe 'a user visits the homepage' do
    it 'displays a friendly danceable message' do
      visit("/")
      expect( page ).to have_content 'Hey Macarena'
    end
  end



  describe 'a user clicks the headline', js: true do
    it 'changes the message to Hey Gerald' do
      visit root_path
      page.find("h1", :text => 'Hey Macarena').click
      expect( page ).to have_content 'ANERACAM YEH'
    end
  end
