class UsersController < ApplicationController
  # before_action :authenticate_user!
  
  # def index
  #   @users = User.all
  # end
 
  def homepage
    render layout: "home" 
  end

  def tasawwuf
  end

  def about
  end

  def bayanaat
  end

  def contact   
  @user = User.new
  end

  # def show    
  #   # @user = User.find(params[:id])
  # end

  # def new
  #   # @user = User.new
  # end

  def create  
    @user = User.new(user_params)     
    respond_to do |format|
    if @user.save

      # Sends email to user when user is created.
      ExampleMailer.sample_email(@user).deliver

      format.html { redirect_to root_path, notice: 'User was successfully created.' }
      format.json { render :show, status: :created, location: @user }
    else
      format.html { render :new }
      format.json { render json: @user.errors, status: :unprocessable_entity }
    end
  end
  end

  def update
  end

  # def edit
  # end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit!
    # params.require(:user).permit(:email, :first_name, :last_name, {avatars: []})
  end

  # def profile
  #   binding.pry
  # end

end
