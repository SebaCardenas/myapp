class CharacterController < ApplicationController
    def index
        if params[:f_id]
            f_id = params[:f_id]
            @my_char = Funciones.get_character_spects(f_id)['data']['person']
            #render json: @my_char.to_json
            render
        end
    end
end
