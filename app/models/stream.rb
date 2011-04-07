# == Schema Information
# Schema version: 20110331215111
#
# Table name: streams
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Stream < ActiveRecord::Base
    attr_accessible :title
    
    belongs_to :user

    has_many :tasks, :dependent => :destroy
  
    validates :title, :presence=> true, :length => { :maximum =>50 }
    validates :user_id, :presence => true
    

#   this should point to the last update
#    default_scope :order => 
    
    
end
