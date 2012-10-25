class CreateScouts < ActiveRecord::Migration
  def change
    create_table :scouts do |t|
      t.string :name
      t.string :email
      t.string :team
      t.string :string
      t.integer :scoutid

      t.timestamps
    end
    add_index :scouts, :scoutid, :unique => true
  end
end
