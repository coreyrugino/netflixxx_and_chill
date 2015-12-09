class InterestsController < ApplicationController
  before_action :find_user, only: [:index, :create, :new, :edit, :update]
  before_action :find_interest, only: [:show, :edit, :update, :destroy]

  def index
    @interests = @user.interest
  end

  def show
  end

  def new
    @interest = Interest.new
  end
  
  def create
    @interest = current_user.interest.new(interest_params)
    if @interest.save
      redirect_to interests_path(@user)
    else
      render :new
    end

  end

  def edit

  end

  def update
    if @interest.update(interest_params)
      redirect_to user_interests_path(@user)
    else
      render :edit
    end

  end

  def destroy
  end

  private 

  def interest_params
    params.require(:interest).permit(:interested_in, :cats, :dogs, :user_id)
  end

  def find_user
    @user = User.find(current_user)
  end

  def find_interest
    @interest = current_user.interests.find(params[:id])
  end
end
