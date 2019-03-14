class DosesController < ApplicationController

   

    def show
        @doses = Dose.all
    end

    def new
        @doses = Dose.new
        @cocktail =Cocktail.find(params[:cocktail_id])
    end

    def create
        @cocktail =Cocktail.find(params[:cocktail_id])
        @doses = Dose.new(dose_params)
        @doses.cocktail = @cocktail
        if @doses.save!
            redirect_to cocktail_path(@cocktail)
        else
            render 'new'
        end
    end

    def destroy
        @doses =Dose.find(params[:id])
        @doses.destroy
        redirect_to cocktail_path(@doses.cocktail)
    end


    private

    # def find_doses
    #     @doses =Dose.find(params[:id])
    # end

    def dose_params
        params.require(:dose).permit(:description, :ingredient_id)
    end 


end
