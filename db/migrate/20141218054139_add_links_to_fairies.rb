class AddLinksToFairies < ActiveRecord::Migration
  def change
  	add_column :fairies, :secret_link, :string
  end
end
