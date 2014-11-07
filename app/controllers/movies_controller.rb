class MoviesController < ApplicationController
	layout 'movie'
	def index
	 @demo=true
		@movies=Movie.all
	end	
	def show
		@demo=true
		@movie=Movie.find_by_id(params[:id])
	end
	def welcome
		@demo=false
	end		
	def new
			 @demo=true

		@movie=Movie.new
		
	end
  def edit
  		 @demo=true

	 	if params[:id].present?
	 		@movie=Movie.find_by_id(params[:id])
	 	end
	end		
	def update
  	 @demo=true

		movie=Movie.find_by_id(params[:id])
		movie.update(movie_params)
		redirect_to movies_path
	end	

	def destroy
 	 @demo=true
		
	 	movie=Movie.find_by_id(params[:id])
    movie.delete
    redirect_to movies_path
  end 
 
	def create
		#create record
	 	 @demo=true

	 	movie=Movie.new(movie_params)
	 	movie.save
	 	redirect_to movies_path
	end	
	
	def about
	 @demo=true

  
	end	

	 private

	  def movie_params
	  	params.require(:movie).permit(:name,:year)
	  end
			
end
