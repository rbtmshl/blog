class Post < ActiveRecord::Base

attr_accessible :content, :name, :title
 
  validates :name,  :presence => true,
                    :length => { :minimum => 5 }
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  validates :content, :length => { :minimum => 1 },
	              :presence => true

  has_many :comments, :dependent => :destroy

end
