class Ticket < ActiveRecord::Base
  attr_accessible :description, :name, :status
  has_many :activities


  def self.receive_mail(message)
    id = message.subject[/^Update (\d+)$/, 1]
    if id.present?
      @ticket = Ticket.find(id)
      @ticket.activities.create! subject: message.subject, description: message.body.decoded, from: message.from.first
    end
  end
end
