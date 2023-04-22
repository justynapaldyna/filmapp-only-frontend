class MoviesController < ApplicationController
    def index
        @movies = JSON.parse(Faraday.get("http://localhost:3001/v2/movies").body)
    end
end