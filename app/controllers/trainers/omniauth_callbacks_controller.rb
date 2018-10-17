class Trainers::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
      @trainer = Trainer.from_omniauth(request.env["omniauth.auth"])
      if @trainer.persisted?
        flash[:notice] = I18n.t "devise.omniauth_callbacks.success", :kind => "Google"
        sign_in_and_redirect @trainer, :event => :authentication
      else
        session["devise.google_data"] = request.env["omniauth.auth"]
        redirect_to new_trainer_registration_url
      end
  end
end
