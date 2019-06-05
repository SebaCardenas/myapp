class PeliculaController < ApplicationController
    def index
        if params[:f_id]
            f_id = params[:f_id]
            @my_film = Funciones.get_film_spects(f_id)['data']['film']
            #render json: @my_film.to_json
            render
        end
    end

end
