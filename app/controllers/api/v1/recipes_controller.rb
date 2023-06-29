module Api
  module V1
		class RecipesController < Api::V1::ApiController

			def index
				@recipes = Recipe.where(index_params)
			end

			private

			def index_params
				params.permit(:status, :status => [])
			end
		end
	end
end
