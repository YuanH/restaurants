class Post < ActiveRecord::Base
  attr_accessible :location, :name, :review, :url, :area, 
  :cuisine, :yelp_price, :zagat_price, :yelp, :michelin_rating
  
  validates :name, :presence => true, :uniqueness => true
  
  has_many :comments
  
  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |post|
        csv << post.attributes.values_at(*column_names)
      end
    end
  end
  
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      post = find_by_id(row["id"]) || new
      post.attributes = row.to_hash.slice(*accessible_attributes)
      post.save!
    end
  end
  
end
