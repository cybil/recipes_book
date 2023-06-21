module Api
  	module V1
		class RecipesController < Api::V1::ApiController #ApplicationController

			before_action :authenticate_user!

			def index
				recipes = Recipe.where(index_params)

				render json: {
					statut: "ok",
				 	error: 0,
					result: recipes
				}
			end

			private

			def index_params
				params.permit(:status, :status => [])
			end
		end
	end
end
