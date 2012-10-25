class Athlete < ActiveRecord::Base
  attr_accessible :age, :aid, :email, :height, :name, :sport, :weight
end
