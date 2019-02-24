class UsersController < ApplicationController
    before_action :doorkeeper_authorize!
    # respond_to :json
    def index
        render json: User.all, status: :ok
    end
end
