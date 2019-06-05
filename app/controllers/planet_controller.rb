class PlanetController < ApplicationController
    def index
        if params[:f_id]
            f_id = params[:f_id]
            @my_plan = Funciones.get_planet_spects(f_id)['data']['planet']
            #render json: @my_plan.to_json
            render
        end
    end

end
