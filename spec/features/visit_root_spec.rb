require 'spec_helper'


  describe 'a user visits the homepage' do
    it 'displays a friendly danceable message' do
      #browser goes to rat
      visit("/")
      expect( page ).to have_content 'Hey Macarena'
    end
  end
