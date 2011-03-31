class Stream < ActiveRecord::Base
    belongs_to :user
    
    validates :title, :length => { :maximum =>50 }
    
    
    
end
