class Director < ActiveRecord::Base
  has_many :collaborates
  has_many :actors, {through: :collaborates}
end
