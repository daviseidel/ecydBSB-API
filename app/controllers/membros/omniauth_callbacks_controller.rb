
class Membros::OmniauthCallbacksController < Devise::OmniauthCallbacksController
    def google_oauth2
        # You need to implement the method below in your model (e.g. app/models/membro.rb)
        @Membro = Membro.from_omniauth(request.env['omniauth.auth'])
  
        if @membro.persisted?
          flash[:notice] = I18n.t 'devise.omniauth_callbacks.success', kind: 'Google'
          sign_in_and_redirect @membro, event: :authentication
        else
          session['devise.google_data'] = request.env['omniauth.auth'].except('extra') # Removing extra as it can overflow some session stores
          redirect_to new_membro_registration_url, alert: @membro.errors.full_messages.join("\n")
        end
    end
    def self.from_omniauth(access_token)
        data = access_token.info
        membro = membro.where(email: data['email']).first
    
        # Uncomment the section below if you want membros to be created if they don't exist
        unless membro
            membro = membro.create(name: data['name'],
            email: data['email'],
            password: Devise.friendly_token[0,20]
            )
        end

        membro
    end
  end