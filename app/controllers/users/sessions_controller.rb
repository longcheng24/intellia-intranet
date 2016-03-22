class Users::SessionsController < Devise::SessionsController
# before_filter :configure_sign_in_params, only: [:create]
  # private

  # def configure_devise_params
  #   params.require(:user).permit(:title, :first_name, :last_name, :department, :email)
  # end

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_in_params
    devise_parameter_sanitizer.for(:sign_in).permit(:title, :first_name, :last_name, :department, :phone, :email, :photo) << :attribute
  end
end
