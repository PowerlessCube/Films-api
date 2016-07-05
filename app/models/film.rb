class Film < ActiveRecord::Base
  belongs_to :director
  has_many :castings
  has_many :actors, {through: :castings}
end
