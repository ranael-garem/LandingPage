module CocsHelper
	def coc_params
		params.require(:coc).permit(:body, :coc_id, :user_id)
	end
end
