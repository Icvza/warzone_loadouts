class TacticsController < ApplicationController
  include TacticsHelper
  before_action :require_login, except: [:new, :create, :index]
  before_action :set_tactic, only: [:update, :edit, :destroy, :show]
    
  def index
    if params[:loadout_id]
      @tactics = Tactic.where(loadout_id: params[:loadout_id])
    else
      @tactics = Tactic.all
    end
  end
    
  def show 
    
  end

  def search
    results = Tactic.search(params[:strategy]) 
    @tacitcs = results.where(user_id: current_user.id)
  end 

  def new
    if logged_in? || params[:loadout_id]
      @loadout = Loadout.find_by(id: params[:loadout_id]) 
      @tactic = Tactic.new
    else
      @tactic = Tactic.new
      redirect_to root_path 
    end
  end
    
  def create 
    @tactic = current_user.tactics.build(tactic_params)
    if @tactic.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit 
    
  end
    
  def update
    if @tactic.update(tactic_params)
      redirect_to tactic_path(@tactic)
    else 
      flash[:errors] = @tactic.errors.full_messages
      render :edit
    end 
  end
      
  def destroy
    @tactic.destroy
    redirect_to signup_path
  end
    

end
