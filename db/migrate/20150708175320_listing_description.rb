class ListingDescription < ActiveRecord::Migration
  def change
    add_column :listings, :description, :string
    add_column :listings, :price, :string
    add_column :listings, :guest_number, :string
    add_column :listings, :toilet, :boolean
    add_column :listings, :shower, :boolean
    add_column :listings, :outlet, :boolean
    add_column :listings, :pets, :boolean
  end
end
