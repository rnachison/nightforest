class AddFairyAssociationToUsers < ActiveRecord::Migration
  def self.up
    add_column :fairies, :user_id, :integer
    add_index 'fairies', ['user_id'], :name => 'index_user_id'
  end

  def self.down
    remove_column :fairies, :user_id
  end
end
