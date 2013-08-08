class Ticket < ActiveRecord::Base
  attr_accessible :description, :name, :status
  has_many :activities
end
