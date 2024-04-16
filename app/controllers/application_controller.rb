class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        #stored_location_for(resource) || current_membro
        edit_membro_url(current_membro)
    end
end
