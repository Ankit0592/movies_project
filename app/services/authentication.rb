class Authentication
	def initialize(params)
		@params=params
		actor=Actor.new(@params)
		actor.save
	end	
end	