class Api::UsersController < ApplicationController

  def index
    hash = {}
    @users = User.all.map do |u|
      {username: u.username, id: "#{u.id}"}
    end

    render json: @users
  end

  # def get_random_words
  #   @user = User.find(id: params[:id])
  #   if @user
  #     render json: @user.five_random_words()
  #   else
  #     render json: {errors: "user not found"}, status: 422
  #   end
  # end

  def show
    @user = User.find(params[:id])

    if @user
      render json: @user.user_to_render
    else
      render json: {errors: "user not found"}, status: 422
    end
  end

  def create
    @user = User.new(user_params)

    if @user.save
      Language.all.each{|l| Point.create(total: 0, user_id: @user.id, language_id: l.id)}
      render json: @user
    else
      render json: {errors: @user.errors.full_messages}, status: 422
    end
  end

  def update
    @user = User.find(params[:id])

    @user.update(user_params)
    if @user.save
      render json: @user
    else
      render json: {errors: @user.errors.full_messages}, status: 422
    end
  end

  def destroy
    @user = User.find(params[:id])

    if @user
      @user.destroy
    else
      render json: {errors: "user not found"}, status: 422
    end
  end

  private
  def user_params
    params.permit(:username, :password)
  end

end
