class AddAreaToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :area, :string
  end
end
