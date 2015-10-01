class TicketController < ApplicationController
  def index
    @ticket = Ticket.all
  end
  
  def show 
  end
  
  #GET 
  def new
    @ticket = Ticket.new
  end
  
  #POST
  def create
    @ticket = Ticket.new(ticket_params)
    
    respond_to do |format|
      if @ticket.save
        format.html { redirect_to @ticket, notice: 'Ticket was successfully created.' }
      else
        format.html { render :new }
        
      end
    end
  end

  def ticket_params
    params.require(:ticket).permit(:name, :time, :city)
  end

end
