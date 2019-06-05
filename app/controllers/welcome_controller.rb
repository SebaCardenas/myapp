require 'funciones'
class WelcomeController < ApplicationController
    include Funciones
    def index 
        @all_films_sort = []
        all_films = Funciones.get_all_films['data']['allFilms']['films']
        all_films.each do |a|
            @all_films_sort[a['episodeID'].to_i-1]=a
        end
        #render json: all_films_sort.to_json
        render
    end


end