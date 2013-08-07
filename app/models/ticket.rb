class Ticket < ActiveRecord::Base
  attr_accessible :description, :name, :status
end
