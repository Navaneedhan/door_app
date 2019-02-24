class ApplicationController < ActionController::Base
  private
    def doorkeeper_authorize!
      super
    rescue Doorkeeper::Errors::TokenUnknown => e
      render json: e
    end
end
