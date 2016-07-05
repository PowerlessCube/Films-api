class Actor < ActiveRecord::Base
  has_many :castings
  has_many :films, {through: :castings}
  has_many :directors
  has_many :collaborates
  has_many :directors, {through: :collaborates}
end
