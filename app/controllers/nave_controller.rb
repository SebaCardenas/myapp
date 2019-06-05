class NaveController < ApplicationController
    def index
        if params[:f_id]
            f_id = params[:f_id]
            @my_star = Funciones.get_starship_spects(f_id)['data']['starship']
            #render json: @my_star.to_json
            render
        end
    end
end
