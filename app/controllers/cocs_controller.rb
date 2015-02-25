class CocsController < ApplicationController

	include CocsHelper

	def create
		@coc = Coc.new(coc_params)
		@coc.comment_id = params[:comment_id]
		@coc.user_id = current_user.id
		@coc.save



		@test = Comment.find(@coc.comment_id) 


	 redirect_to post_comment_path(@test.post_id , @coc.comment_id)







	end
end