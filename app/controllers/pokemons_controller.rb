class PokemonsController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.update_column(:trainer_id, current_trainer)
		redirect_to root_path
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		if @pokemon.health == nil
			@pokemon.destroy
		end
		@pokemon.update_column(:health, @pokemon.health-10)
		if @pokemon.health <= 0
			@pokemon.destroy
		end
		redirect_to trainer_path current_trainer
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.create pokemon_params
		if @pokemon.save
			@pokemon.update_column(:trainer_id, current_trainer)
			redirect_to current_trainer
		else	
			flash[:error] = @pokemon.errors.full_messages.to_sentence	
			render 'new'
		end
	end

	def pokemon_params
		params.require(:pokemon).permit(:name)
	end
end