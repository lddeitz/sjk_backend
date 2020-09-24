class Api::UsersController < ApplicationController
  def create
    user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      password: params[:password],
      password_digest: params[:password_confirmation],
      email: params[:email],
      artist_name: params[:artist_name],
      bio: params[:bio],
      city: params[:city],
      country: params[:country],
      profile_picture: params[:profile_picture],
      profile_url: params[:profile_url]
    )
    if user.save
      render json: { "User created successfully"}, status: :created
    else 
      render json: { errors: user.errors.full_messages}, status: :bad_request
    end 
  end 
end
