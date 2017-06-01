module Website

  module ApplicationHelper
    
    # Shortcut code serving static files cleanly
    def static_file(relative_path)
      File.expand_path(relative_path, settings.public_folder)
    end
    
    def external_url(host, request)
      host + request.fullpath
    end
  end
end