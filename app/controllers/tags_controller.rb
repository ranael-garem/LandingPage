class TagsController < ApplicationController

	def show
  	@tag = Tag.find(params[:id])
	end


	def index 
	@tags = Tag.all
	end

	def show2
		 
		tag_ids = params[:tags_ids]
		if (tag_ids!= nil)

		@result = Post.joins(:taggings).where(taggings: {tag: tag_ids}).group('posts.id').having("count(taggings.id) = #{tag_ids.length}")
		end

end
end
