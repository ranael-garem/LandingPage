class CommentsController < ApplicationController

	include CommentsHelper

	def create
		@comment = Comment.new(comment_params)
		@comment.post_id = params[:post_id]
		@comment.user_id = current_user.id
		@comment.save
		redirect_to post_path(@comment.post_id)
	end


	def show
		@comment = Comment.find(params[:id])
		@coc = Coc.new  
		@coc.comment_id = @comment.id
	end




end
