class GamemodesController < ApplicationController
  include GamemodesHelper
  before_action :set_gamemode, [:show, :edit, :destroy]
    
  def index
    @gamemodes = Gamemode.all
  end
  
  def show 
    
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
    @gamemode.destroy
    redirect_to signup_path
  end



end
