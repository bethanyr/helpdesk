class Activity < ActiveRecord::Base
  attr_accessible :description, :email, :from, :subject, :type
end
