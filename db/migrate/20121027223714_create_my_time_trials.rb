class CreateMyTimeTrials < ActiveRecord::Migration
  def change
    create_table :my_time_trials do |t|
      t.string :Time_Trial_Type
      t.string :sport
      t.date :Date
      t.string :My_Time
      t.string :Other_Details

      t.timestamps
    end
  end
end
