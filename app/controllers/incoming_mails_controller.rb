class IncomingMailsController < ApplicationController
require 'mail'
skip_before_filter :verify_authenticity_token

  def create
    Rails.logger.info params[:headers][:subject]
    Rails.logger.info params[:plain]
    Rails.logger.info params[:html]
    subject = params[:headers]['Subject']
    from = params[:envelope][:from]
    body = params[:plain]
    id = subject[/^Update (\d+)$/, 1]
    if id.present?
      @ticket = Ticket.find(id)
      @ticket.activities.create! subject: subject, description: body.decoded, from: from, email_address: from
    end
  end
end
