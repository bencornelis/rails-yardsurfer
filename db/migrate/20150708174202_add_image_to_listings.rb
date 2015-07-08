class AddImageToListings < ActiveRecord::Migration
  def change
    change_table :listings do |t|
      t.attachment :image
    end
  end
end
