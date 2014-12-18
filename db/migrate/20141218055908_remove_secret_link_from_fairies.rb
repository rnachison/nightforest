class RemoveSecretLinkFromFairies < ActiveRecord::Migration
  def change
  	remove_column :fairies, :secret_link
  end
end
