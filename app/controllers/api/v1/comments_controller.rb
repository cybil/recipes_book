module Api
  	module V1
		class CommentsController < Api::V1::ApiController #ApplicationController

			before_action :authenticate_user!

			def index
				@comments = Comment.where(index_params)
			end

			def create
				@comment = Comment.create!(user_id: current_user.id, recipe_id: create_params[:recipe_id], content: create_params[:content])
			end

			private

			def index_params
				params.require(:recipe_id)
				params.permit(:recipe_id)
			end

			def create_params
				params.require(:recipe_id)
				params.permit(:recipe_id, :content, :format)
			end

		end
	end
end
