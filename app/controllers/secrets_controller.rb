class SecretsController < ApplicationController
  before_action :require_login

  def show
  end

private

  def require_login
    if !current_user
      redirect_to '/'
    end
  end

end
