module ApplicationHelper
  
  # Shortcut code serving static files cleanly
  def static_file(relative_path)
    File.expand_path(relative_path, settings.public_folder)
  end
end