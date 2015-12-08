Class RegistrationsController < Devise::RegistrationsController
  
  private
    def sign_up_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :sex, :age, :title, :body, :status)
    end
end