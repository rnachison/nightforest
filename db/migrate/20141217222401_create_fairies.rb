class CreateFairies < ActiveRecord::Migration
  def change
    create_table :fairies do |t|

    t.string :realm

    end
  end
end
