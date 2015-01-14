class AddHidingPlaceToFairies < ActiveRecord::Migration
  def change
  	add_column :fairies, :hiding_place, :string
  end
end
