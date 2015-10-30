class PokemonController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.trainer = current_trainer
		@pokemon.save
		redirect_to root_url
	end

	def damage
		@pokemon = Pokemon.find(params[:id])
		@pokemon.health = @pokemon.health - 10
		@pokemon.save
		if @pokemon.health <= 0
			@pokemon.destroy
		end
		redirect_to :back
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.create poke_params
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.trainer = current_trainer
		if not @pokemon.save
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to new_path, :flash => {:error => "Pokemon name invalid"}
		else
			redirect_to trainer_path(current_trainer.id)
		end
	end

	def poke_params
		params.require(:pokemon).permit(:name)
	end


end
