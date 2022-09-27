class Aya < ApplicationRecord
    validates_presence_of :content , :text ,:aya_number 
    belongs_to :chapter
    
end
