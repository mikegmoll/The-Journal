class CreateMyworkouts < ActiveRecord::Migration
  def change
    create_table :myworkouts do |t|
      t.string :workouttype
      t.date :Date
      t.string :details

      t.timestamps
    end
  end
end
