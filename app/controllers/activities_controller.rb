class ActivitiesController < ApplicationController
  before_filter :find_ticket
  before_filter :find_activity,:only => [:show, :edit, :update, :destroy]
  def new
    @activity = @ticket.activities.build
  end

  def create

  end
  def create
    @activity = @ticket.activities.build(params[:activity])
    if @activity.save
      flash[:notice] = "Activity has been created."
      redirect_to [@ticket, @activity]
    else
      flash[:alert] = "Activity has not been created."
      render :action => "new"
    end
  end

  def edit

  end

  def show

  end

  def update
    if @activity.update_attributes(params[:activity])
      flash[:notice] = "Activity has been updated."
      redirect_to [@ticket, @activity]
    else
      flash[:alert] = "Activity has not been updated."
      render :action => "edit"
    end
  end
  def destroy
    @activity.destroy
    flash[:notice] = "Activity has been deleted."
    redirect_to @ticket
  end


  private
  def find_ticket
    @ticket = Ticket.find(params[:ticket_id])
    rescue ActiveRecord::RecordNotFound
    flash[:alert] = "The ticket you were looking for could not  be found."
    redirect_to root_path
  end
  def find_activity
      @activity = @ticket.activities.find(params[:id])
  end
end

