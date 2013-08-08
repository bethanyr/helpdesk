class Activity < ActiveRecord::Base
  attr_accessible :description, :email_address, :from, :subject, :activity_type
  belongs_to :ticket

end
