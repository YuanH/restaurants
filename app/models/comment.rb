class Comment < ActiveRecord::Base
  attr_accessible :content, :email, :post_id
  belongs_to :post
end
