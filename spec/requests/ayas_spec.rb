require 'rails_helper'

RSpec.describe "Ayas", type: :request do
  
  our_chapter = Chapter.first_or_create(revelation_place:'makka' , name:'al-fatiha')

  let(:valid_attributes)do 
    {
      'content'=> 'الحمدلله', 'text'=> 'الحمدلله', 'aya_number'=>2
    }
  end

  describe "GET /ayas" do
    it "checking index action" do
      get ayas_path 
      expect(response).to have_http_status(200)
    end
  end
  
  describe "GET /new" do
    it "checking new action" do
      get new_aya_path 
      expect(response).to have_http_status(200)
    end
  end

end
