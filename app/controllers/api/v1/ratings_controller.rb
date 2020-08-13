module Api
  module V1
    class RatingsController < ApplicationController
      skip_before_action :authenticate_user!

      def index
        ratings = Rating.where(rating_params)

        render json: ratings, status: 200
      end

      def new
        rating = Rating.new(rating_params)

        if rating.save
          render json: rating, status: 200
        else
          render json: rating, status: 500
        end
      end

      def update
        rating = Rating.find(rating_params)

        rating[:value] = params[:value]

        if rating.update

        end
      end

    private
      def rating_params
        params.permit(:book_id,:user_id, :value).tap do |p|
          p.require(:book_id)
        end
      end
    end
  end
end
