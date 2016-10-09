class RsvpController < ApplicationController
  def index
    @rsvp = Rsvp.new
    render :index
  end

  def create
    @rsvp = Rsvp.new(rsvp_params)
    if @rsvp.save
      flash[:notice] = "Thank you for RSVPing."
      render :confirmation
    else
      render :index
    end
  end

  def rsvp_params
    params.require(:rsvp).permit(:first_name, :last_name, :email, :rsvp)
  end
end
