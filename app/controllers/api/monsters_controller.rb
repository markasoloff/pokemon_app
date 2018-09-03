class Api::MonstersController < ApplicationController
    def index
      @pals = Pal.all
      render 'index.json.jbuilder'
    end

    def create
      @pal = Pal.new(name: params[:name],
                     legs: params[:legs],
                    )
      @pal.save
      render 'show.json.jbuilder'
    end

    def show
      @pal = Pal.find(params[:id])
      render 'show.json.jbuilder'
    end
end
