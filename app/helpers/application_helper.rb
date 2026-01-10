module ApplicationHelper
  def nav_active(path)
    current_page?(path) ? 'active' : ''
  end
end
