module LoadoutsHelper
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
