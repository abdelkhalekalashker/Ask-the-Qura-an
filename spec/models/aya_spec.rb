require 'rails_helper'

RSpec.describe Aya, type: :model do
 

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
