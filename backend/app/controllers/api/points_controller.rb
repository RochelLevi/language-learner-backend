class Api::PointsController < ApplicationController

  def update
    @point = Point.find(params[:id])
    @point.update(point_params)

    if @point.save
      render json: @point
    else
      render json: {errors: @point.errors.full_messages}, status: 422
    end
  end

  private
  def point_params
    params.permit(:total)
  end

end
