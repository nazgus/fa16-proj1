class PokemonsController < ApplicationController
    def capture
        @pokemon = Pokemon.find(params[:id])
        @pokemon.trainer_id = current_trainer.id
        @pokemon.save

        redirect_to root_path
    end

    def damage
        @pokemon = Pokemon.find(params[:id])
        @pokemon.health -= 10
        @pokemon.save

        if @pokemon.health <= 0
            @pokemon.destroy
        end

        redirect_to trainer_path(id: @pokemon.trainer_id)
    end

    def new
        @pokemon = Pokemon.new

    end

    def create
        @pokemon = Pokemon.new pokeparams
        @pokemon.level = 1
        @pokemon.trainer_id = current_trainer.id
        @pokemon.health = 100

        if @pokemon.save
            redirect_to trainer_path(id: current_trainer.id)
        else
            redirect_to :back
            flash[:error] = @pokemon.errors.full_messages.to_sentence
        end
    end

    private
    def pokeparams
        params.require(:pokemon).permit(:name)
    end
end
