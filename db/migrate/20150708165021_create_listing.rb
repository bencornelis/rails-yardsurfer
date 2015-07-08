class CreateListing < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.column :name, :string
      t.column :location, :string

      t.timestamps
    end
  end
end
