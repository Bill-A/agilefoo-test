module StaticPagesHelper
	def display_vote(vote)  
		 if vote
		 	"Up voted: "
		 else
		 	"Down voted: "
		 end
	end	
end
