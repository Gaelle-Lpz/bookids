class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def after_sign_in_path_for(resource)
    if current_user.parent?
      children_path
    else
      books_path
    end
  end

  def default_url_options
    { host: ENV["www.bookids.fun"] || "localhost:3000" }
  end
end
