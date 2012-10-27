class CreateMycompetitions < ActiveRecord::Migration
  def change
    create_table :mycompetitions do |t|
      t.string :competition_Name
      t.string :sport
      t.date :Date
      t.string :My_result
      t.string :time
      t.string :other_details

      t.timestamps
    end
  end
end
