class Post < ActiveRecord::Base
  attr_accessible :location, :name, :review, :url
  
  validates :name, :presence => true, :uniqueness => true
  validates :review, :presence => true
  
  has_many :comments
  
end
