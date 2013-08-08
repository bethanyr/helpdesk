class HelpdeskMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.helpdesk_mailer.ticket_confirmation.subject
  #
  def ticket_confirmation(ticket)
    @ticket = ticket
    @greeting = "Hi"
    @mail_to = "bethanynrentz@gmail.com"

    mail to: @mail_to, subject: @ticket.id.to_s + @ticket.name.to_s
  end
end
