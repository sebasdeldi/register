class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.password = randomize_password
    if @user.save
      UserMailer.password_information(@user).deliver #sends email with email and password to the new registered user
      success_response "Information correctly saved", root_path
    else
      failled_response "Please check your information", "users/new"
    end
  end

  def authenticate
    if request.post? #if a post request is detected
      #get value from parameters sent in post request
      email_param = params[:email] 
      password_param = params[:password]

      #query user matching authentication email
      user = User.where(email: email_param).first

      #check if user exists and password matches to simulate an authentication mechanism
      if user.nil? 
        failled_response "Wrong authentication information", 'users/authenticate'
      elsif !(user.email == email_param && user.password == password_param)
        failled_response "Wrong authentication information", 'users/authenticate'
      else
        success_response 'Logged in correctly', root_path
      end
    end
  end

  private
    def user_params
      params.require(:user).permit(:names, :last_names, :birth_year, :email, :ocupation, :address, :state_id, :city_id)
    end

    #flash message and redirections handlers
    def failled_response (message, route)
      flash[:error] = message
      render route
    end

    def success_response (message, route)
      flash[:notice] = message
      redirect_to root_path  
    end
end
