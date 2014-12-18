class AddPortalToFairy < ActiveRecord::Migration
  def change
  	add_column :fairies, :portal, :string
  end
end
