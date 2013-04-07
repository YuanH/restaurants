class AddDetailsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :cuisine, :string
    add_column :posts, :yelp_price, :string
    add_column :posts, :zagat_price, :string
    add_column :posts, :yelp, :decimal
  end
end
