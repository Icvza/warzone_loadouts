module TacticsHelper
    def set_tactic
        @tactic = Tactic.find(params[:id])
      end
    
      def tactic_params
        params.require(:tactic).permit(:user_id, :gamemode_id, :strategy, :creator, :loadout_id)
      end 
    
      def require_login
        unless logged_in?
          flash[:error] = "You must be logged in to access this section"
          redirect_to login_path
        end
      end
end
