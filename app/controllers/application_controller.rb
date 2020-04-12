class ApplicationController < ActionController::Base

    def hello
        redirect_to controller: 'sessions', action: 'new' unless session[:name]
      end
      
end
