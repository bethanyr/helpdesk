class TicketsController < ApplicationController
before_filter :find_ticket, :only => [:show, :edit, :update, :destroy]
  def index
    @tickets = Ticket.all
  end

  def new
    @ticket =Ticket.new
  end

  def create
    @ticket = Ticket.new(params[ :ticket])
    if @ticket.save
      flash[ :notice] = "Ticket has been created."
      redirect_to @ticket
    else
      flash[ :alert] = "Ticket has not been created."
      render :action => "new"
    end
  end

  def show

  end

  private
  def find_ticket
    @ticket = Ticket.find(params[ :id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The ticket you were looking" +
            " for could not be found."
      redirect_to root_path
  end
end
