class CocktailsController < ApplicationController

    before_action :cocktail_id, only: [:show, :update, :destroy]
  
# show index new update destroy create (private- find my id, before action only)

    def index
        @cocktails = Cocktail.all
    end

    def show
    end

    def new
        @cocktail = Cocktail.new
    end

    def update
    end

    def destroy
        @cocktail.destroy 
        redirect_to cocktails_path, notice: 'Successfull'
    end

    def create

        @cocktail = Cocktail.new(cocktail_params)

        if @cocktail.save
          redirect_to cocktails_path(@cocktail), notice: 'Article was successfully created.'
        else
          render :new
        end
    end

    



    private

    def cocktail_id
    @cocktail = Cocktail.find(params[:id])
    end

    def cocktail_params
        params.require(:cocktail).permit(:name)
      end 

end
