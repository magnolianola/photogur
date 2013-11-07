class CommentsController <ApplicationController
	def index
		@picture = Picture.find(params[:picture_id])
		@comments = @picture.comments
	end

	def new
		@picture = Picture.find(params[:picture_id])
		@comment = Comment.new
	end

	def create
		@picture = Picture.find(params[:picture_id])

		@comment = Comment.new(comment_params)
		@comment.picture = @picture
		# render :new => "#{params[:name]} #{params[:content]}"
		if @comment.save
			redirect_to :comments
		else
			render :new
		end
	end

	private

	def comment_params
		params.require(:comment).permit(:name, :content)
	end

	#  def update

	# 	case x
	# 		when @comment.update_attributes(new_comment) then redirect_to "/pictures/#{@picture.id}/comments"
	# 		else render :new
	# 	end
	# end
end