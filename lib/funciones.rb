require 'httparty'

module Funciones
    $url = "https://swapi-graphql-integracion-t3.herokuapp.com/"
    
    def self.get_all_films
        $query = "{allFilms {
                    edges {
                        node {
                            title
                            releaseDate
                            episodeID
                            director
                            producers
                        }
                    }
                }		
            }"
        response = HTTParty.get($url, query: {'query' => $query})
        results = response.parsed_response
        return results
    end

    def self.get_film_spects(id)
        $query = "{film(filmID:"+id.to_s+"){
                    title
                    episodeID
                    openingCrawl
                    director
                    producers
                    releaseDate
                    characterConnection{
                        characters{
                            name
                            id
                        }
                    }
                    planetConnection{
                        planets{
                            name
                            id
                        }
                    }
                    starshipConnection{
                        starships{
                            name
                            id
                        }
                    }    
				}
            }"
        response = HTTParty.get($url, query: {'query' => $query})
        results = response.parsed_response
        return results
    end

    def self.get_person_spects(id)
        $query = "{
            person(id:\"#{id}\"){
              name
              height
              mass
              hairColor
              skinColor
              birthYear
              gender
              homeworld {
                name
                id
              }
              filmConnection {
                films {
                  title
                  id
                }
              }
              starshipConnection {
                starships {
                  name
                  id
                }
              }
            }
          }"
        response = HTTParty.get($url, query: {'query' => $query})
        results = response.parsed_response
        return results
    end

    def self.get_planet_spects(id)
        $query = "{
            planet(id:\"#{id}\"){
                name
                rotationPeriod
                orbitalPeriod
                diameter
                climates
                gravity
                terrains
                surfaceWater
                population
                residentConnection{
                  residents{
                    name
                    id
                  }
                }
                filmConnection {
                  films {
                    title
                    id
                  }
                }
              }
            }"
        response = HTTParty.get($url, query: {'query' => $query})
        results = response.parsed_response
        return results
    end

    def self.get_starship_spects(id)
        $query = "{
            starship(id:\"#{id}\"){
                name
                model
                manufacturers
                costInCredits
                length
                maxAtmospheringSpeed
                crew
                passengers
                cargoCapacity
                consumables
                hyperdriveRating
                MGLT
                starshipClass
                pilotConnection{
                    pilots{
                        name
                        id
                    }
                }
                filmConnection {
                  films {
                    title
                    id
                  }
                }
              }
            }"
        response = HTTParty.get($url, query: {'query' => $query})
        results = response.parsed_response
        return results
    end
end