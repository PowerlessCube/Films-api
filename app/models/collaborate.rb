class Collaborate < ActiveRecord::Base
  belongs_to :actor
  belongs_to :director
end
