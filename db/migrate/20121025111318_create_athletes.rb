class CreateAthletes < ActiveRecord::Migration
    belongs_to :coach
  def change
    create_table :athletes do |t|
      t.integer :aid
      t.string :name
      t.integer :age
      t.string :email
      t.integer :weight
      t.integer :height
      t.string :sport

      t.timestamps
    end
    add_index :athletes, :aid, :unique => true
  end
end
