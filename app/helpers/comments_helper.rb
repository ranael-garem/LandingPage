module CommentsHelper
	def comment_params
		params.require(:comment).permit(:body, :user_id, :comment_id)
	end
end
