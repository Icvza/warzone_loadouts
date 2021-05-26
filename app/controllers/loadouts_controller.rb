class LoadoutsController < ApplicationController
    include LoadoutsHelper
    before_action :require_ownership, except: [:new, :create, :index, :show, :abc]
    before_action :set_loadout, only: [:update, :edit, :destroy, :show]
      
      def index
        @loadouts = Loadout.all
      end
    
      def show
        
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
        
      end
    
      def update
        if @loadout.update(loadout_params)
          redirect_to user_path(@loadout.user_id)
        else 
          render :edit
        end 
      end

      def abc
        @loadouts = Loadout.alphab
      end
    
      def destroy
        @loadout.destroy
        redirect_to signup_path  
      end       
end
