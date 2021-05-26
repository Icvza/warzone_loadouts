module GamemodesHelper
    def gamemode_params
        params.require(:gamemode).permit(:mode_name)
    end

    def set_gamemode
        @gamemode = Gamemode.find(params[:id])
    end

end
