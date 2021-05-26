class LoadoutsController < ApplicationController
    #include LoudoutsHelper
    #before_action :require_ownership, except: [:new, :create, :index]
    before_action :set_loadout, only: [:update, :edit, :destroy, :show]
      
      def index
        @loadouts = Loadout.all
      end
    
      def show
        @loadout = Loadout.find_by(params[:id])
      end
    
      def new
        if logged_in?
          @loadout = Loadout.new
        else
          redirect_to root_path
        end
      end
     
      def create 
        @loadout = current_user.loadouts.build(loadout_params)
          if @loadout.save 
            redirect_to user_path(current_user.id) 
          else 
            flash[:errors] = @loadout.errors.full_messages
            render :new
          end 
      end
  
      def edit
        @loadout = Loadout.find(params[:id])
      end
    
      def update
        @loadout = Loadout.find(params[:id])
        if @loadout.update(loadout_params)
          redirect_to user_path(@loadout.user_id)
        else 
          render :edit
        end 
      end
    
      def destroy
        @loadout = Loadout.find(params[:id])
        @loadout.destroy
        redirect_to signup_path  
      end

      private

    def set_loadout
        @loadout = Loadout.find(params[:id])
    end

    def loadout_params
      params.require(:loadout).permit(:loadout_name, :weapon, :optic, :muzzle, :barrel, :underbarrel, :ammunition, :stock, :girp, :gun_perk, :perk_1, :perk_2, :perk_3, :lethal, :tactical, :creator, :remarks, :tactic_id)
    end 
    
    def require_ownership
      if set_loadout.user_id != current_user.id
        redirect_to user_path(@loadout.user_id)
     end
    end
  
      
end
