class Users::RegistrationsController < Devise::RegistrationsController
# before_filter :configure_sign_up_params, only: [:create]
# before_filter :configure_account_update_params, only: [:update]
prepend_before_action :check_captcha, only: [:create] # Change this to be any actions you want to protect.

    # def configure_devise_params
    #   devise_parameter_sanitizer.for(:sign_up) do |u|
    #     u.permit(:title, :first_name, :last_name, :email, :password, :password_confirmation, :department)
    #   end
    #   devise_parameter_sanitizer.for(:account_update) do |u|
    #     u.permit(:title, :first_name, :last_name, :email, :password, :password_confirmation, :department)
    #   end
    # end


  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.for(:sign_up) << :attribute
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.for(:account_update) << :attribute
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    # super(resource)
    new_user_session_path
  end

  private

  def check_captcha
    if verify_recaptcha
      true
    else
      self.resource = resource_class.new sign_up_params
      respond_with_navigational(resource) { render :new }
    end
  end

  def sign_up_params
    params.require(:user).permit(:title, :first_name, :last_name, :department, :phone, :remove_photo, :email, :photo, :password, :password_confirmation)
  end
end
