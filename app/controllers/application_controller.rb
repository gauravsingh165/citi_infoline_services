class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: :admin_namespace?

  private

  def admin_namespace?
    controller_path.start_with?('rails_admin') ||
      controller_path.start_with?('admins')
  end
end
