class CreateCoaches < ActiveRecord::Migration
  def change
    create_table :coaches do |t|
      t.string :name
      t.string :email
      t.string :team
      t.string :string
      t.integer :coachid

      t.timestamps
    end
    add_index :coaches, :coachid, :unique => true
  end
end
