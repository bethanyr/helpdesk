class HelpdeskMailer < ActionMailer::Base
  default from: ENV["GMAIL_USERNAME"]
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.helpdesk_mailer.ticket_confirmation.subject
  #
  def ticket_confirmation(ticket)
    @ticket = ticket
    @mail_to = "bethanynrentz@gmail.com"
    mail to: @mail_to, subject: @ticket.id.to_s + "-" + @ticket.name.to_s, from: "bethany.helpdesk@gmail.com", reply_to: "4cbcd1717700ab15df8c@cloudmailin.net"
  end
end
