class TacticsController < ApplicationController
    
  def index
    @tactics = Tactic.all
  end
    
  def show 
    #find_by will throw an error
    @tactic = Tactic.find(params[:id])
  end
    
  def new
    if logged_in?
      @tactic = Tactic.new
    else
      redirect_to root_path 
    end
  end
    
  def create 
    @tactic = current_user.tactics.build(tactic_params)
    if @tactic.save
      redirect_to tactic_path(@tactic)
    else
      render :new
    end
  end

  def edit 
    #test this 
    @tactic = Tactic.find(params[:id])
  end
    
  def update
      #edit this 
      @tactic = Tactic.find(params[:id])
    if @tactic.update(tactic_params)
      redirect_to tactic_path(@tactic)
    else 
      flash[:errors] = @tactic.errors.full_messages
      render :edit
    end 
  end
      
  def destroy
    #edit this 
    @tactic.destroy
    redirect_to signup_path
  end
      
  private
  #make sure theses methods alighn 
  #def set_tactic
  #  @tactic = Tactic.find_by(params[:id])
  #end

  def tactic_params
    params.require(:tactic).permit(:user_id, :gamemode_id, :strategy, :creator)
  end 

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to login_path
    end
  end
end
