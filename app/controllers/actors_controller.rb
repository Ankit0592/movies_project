class ActorsController < ApplicationController
	layout 'actor' 
	def index
	 
		@actors=Actor.all
	end
	def new
		@actor=Actor.new
		
	end
	def create
	 	actor=Authentication.new(actor_params) #using service objects
	 	#actor=Actor.new(actor_params)
	 	#actor.save
	 	redirect_to actors_path
	end	
  
  def show
		
		@actor=Actor.find_by_id(params[:id])
	end


	def edit
  	
	 	if params[:id].present?
	 		@actor=Actor.find_by_id(params[:id])
	 	end
	end		
	def update
		actor=Actor.find_by_id(params[:id])
		actor.update(actor_params)
		redirect_to actors_path
	end	

	def destroy
		
	 	actor=Actor.find_by_id(params[:id])
    actor.delete
    redirect_to actors_path
  end 

	private

	  def actor_params
	  	params.require(:actor).permit(:name,:movie)
	  end
end	
