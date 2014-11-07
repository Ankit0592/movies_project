class MoviesController < ApplicationController
	layout 'movie'
	def index
	 
		@movies=Movie.all
	end	
	def show
		
		@movie=Movie.find_by_id(params[:id])
	end
	def welcome
		
	end		
	def new
			 

		@movie=Movie.new
		
	end
  def edit
  		 

	 	if params[:id].present?
	 		@movie=Movie.find_by_id(params[:id])
	 	end
	end		
	def update
  	 

		movie=Movie.find_by_id(params[:id])
		movie.update(movie_params)
		redirect_to movies_path
	end	

	def destroy
 	 
		
	 	movie=Movie.find_by_id(params[:id])
    movie.delete
    redirect_to movies_path
  end 
 
	def create
    HEAD
		#create record

	 	

	 	movie=Movie.new(movie_params)
	 	movie.save
	 	redirect_to movies_path
	end	
	
	def about
	 

  
	end	

	 private

	  def movie_params
	  	params.require(:movie).permit(:name,:year)
	  end
			
end
