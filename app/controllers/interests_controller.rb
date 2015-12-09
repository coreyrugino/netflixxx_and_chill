class InterestsController < ApplicationController
  before_action :find_user, only: [:index, :create, :new]
  before_action :find_interest, only: [:show, :edit, :update, :destroy]

  def index
    @interest = @user.interest 
  end

  def show
  end

  def new
    @user = current_user
    @interest = Interest.new(user_id: @user)
  end
  
  def create
    binding.pry
    @interest = Interest.new(interest_params)
    if @interest.save
      redirect_to user_interests_path(@user)
    else
      render :new
    end

  end

  def edit
  end

  def update

  end

  def destroy
  end

  private 
    def interest_params
      params.require(:interest).permit(:interested_in, :cats, :dogs, :user_id)
    end

    def find_user
      @user = User.find(params[:user_id])
    end

    def find_interest
      @interest = Interest.find(params[:id])
    end

end
