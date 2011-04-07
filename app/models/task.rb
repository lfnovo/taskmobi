class Task < ActiveRecord::Base
    attr_accessible :title, :user_id, :owner
    
    belongs_to :stream

    validates :title, :presence=> true, :length => { :maximum =>70 }
    validates :user_id, :presence => true
    validates :owner, :presence => true
    validates :stream_id, :presence => true
    
    default_scope :order =>  "updated_at desc"
    
    
    
end
