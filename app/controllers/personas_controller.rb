class PersonasController < ApplicationController

  
  before_action :find_persona, only: [:show, :edit, :update]

  def index
    if params[:collective_id]
      @personas = Collective.find(params[:collective_id]).personas
    else
      @personas = persona.all
    end
  end

  def show
  end

  def new
    if params[:collective_id] && !Collective.exists?(params[:collective_id])
      redirect_to collectivess_path, flash[:message] = "not found."
    elsif
      @persona = Persona.find_by(user_id: current_user.id, collective_id: params[:collective_id]) 
      flash[:message] = "You've already reviewed this collective."
      redirect_to collective_persona_path(@persona.collective_id, @persona)
    else
      @persona = Persona.new(:collective_id => params[:collective_id], :user_id => current_user.id)
    end
  end

  def create
    if @persona = Persona.find_by(user_id: current_user.id, collective_id: params[:persona][:collective_id]) 
      flash[:message] = "You've already reviewed this collective."
      redirect_to collective_persona_path(@persona.collective_id, @persona)
    else
      @persona = Persona.new(persona_params)
        if @persona.save
        redirect_to collective_persona_path(@persona.collective, @persona)
        else
          render :new
        end
    end
  end

  def edit
    @collective = collective.find_by(id: params[:collective_id])
    
    if @persona.user_id != current_user.id
      redirect_to collectives_path
    end
  end

  def update
    @persona.update(persona_params)

    redirect_to collective_persona_path(@persona.collective, @persona)
  end

private

  def persona_params
    params.require(:persona).permit(:stars, :taste, :comments, :collective_id, :user_id)
  end

  def find_persona
    @persona = persona.find_by(id: params[:id])
  end


end









#     def create
#         @ride = Ride.create(ride_params)
#         flash[:notice] = @ride.take_ride
#         redirect_to @ride.user
#       end
    
#       private
    
#       def ride_params
#         params.require(:ride).permit(:user_id, :attraction_id)
#       end
#     end
    
# end
