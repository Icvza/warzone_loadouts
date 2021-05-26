class GamemodesController < ApplicationController
    
  def index
    @gamemodes = Gamemode.all
    #this might be a good spot for the scope method where eveything will show
  end
  
  def show 
    @gamemode = Gamemode.find(params[:id])
  end
  
  def new 
    if logged_in?
      @gamemode = Gamemode.new
    else
      redirect_to gamemode_path(current_gamemode.id)
    end
  end
  
  def create 
    @gamemode = Gamemode.new(gamemode_params)
    if @gamemode.save 
        redirect_to gamemode_path(@gamemode.id) 
    else 
      flash[:errors] = @gamemode.errors.full_messages
      render :new
    end 
  end

  def edit 
    @gamemode = Gamemode.find(params[:id])
  end
  
  def update
    if @gamemode.update(gamemode_params)
      redirect_to gamemode_path(@gamemode)
    else 
      flash[:errors] = @gamemode.errors.full_messages
      render :edit
    end 
  end
  
  def destroy
    @gamemode = Gamemode.find(params[:id])
    @gamemode.destroy
    redirect_to signup_path
  end

  private
  
  def gamemode_params
    params.require(:gamemode).permit(:mode_name)
  end

end
