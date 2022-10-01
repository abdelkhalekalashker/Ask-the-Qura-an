require 'rails_helper'

RSpec.describe Aya, type: :model do
  our_chapter = Chapter.first_or_create(revelation_place:'makka' , name:'al-fatiha')
  # let(:our_chapter) do 
  #   {
  #   'revelation_place' => 'makka',
  #   'name' => 'al-fatiha',
  #   'chapter_id' => 1
  #   }
  # end
  it "should work" do
    aya = Aya.new(content:'الحمدلله', text:'الحمدلله', aya_number:2)
    aya.chapter = our_chapter
    expect(aya).to be_valid
  end

  it 'should not to be null' do
    expect(Aya.new).to_not be_valid
  end

  it "chapter should be exist" do
    expect(Aya.new(content:'الحمدلله', text:'الحمدلله', aya_number:2)).to_not be_valid
  end

  it "content should be exist" do
    expect(Aya.new( text:'الحمدلله', aya_number:2, chapter_id:3)).to_not be_valid
  end

  it "text should be exist" do
    expect(Aya.new(content:'الحمدلله', aya_number:2,chapter_id:6)).to_not be_valid
  end

  
end
