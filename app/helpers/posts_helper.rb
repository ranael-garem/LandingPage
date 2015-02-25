module PostsHelper
	def post_params
  params.require(:post).permit(:title, :body, :user_id, :tag_list)
end
	def embed(youtube_url)
    youtube_id = youtube_url.split("=").last
    content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
  end
end
