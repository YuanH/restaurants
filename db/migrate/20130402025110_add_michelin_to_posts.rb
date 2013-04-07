class AddMichelinToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :michelin_rating, :string
  end
end
