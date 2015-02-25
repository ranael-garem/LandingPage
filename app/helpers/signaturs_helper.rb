module SignatursHelper
	def signatur_params
		params.require(:signatur).permit(:image,:user_id)
	end
end
