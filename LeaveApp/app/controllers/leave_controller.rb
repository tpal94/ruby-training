class LeaveController < ApplicationController
  def index
    @leave = Leave.all
  end
  def new
    @leave = Leave.new
  end
    def show
      @leave = Leave.find(params[:id])
    end
  

  def create
    @leave = Leave.new(leave_params)
   
    @leave.save
    redirect_to  @leave
  end
  private
  def leave_params
    params.require(:leave).permit(:ltype, :datefrom, :dateto, :days, :reason, :tleave)
  end
end
