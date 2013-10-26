module TheHub

  module Helpers
    def talk
      if current_resource.path =~ /^talks\//
        current_resource.extend TalkPage
      else
        puts current_resource.path
      end
    end

    def preview_for_talk path
      sitemap.find_resource_by_path(path + 'summary.html')
    end
  end


  module TalkPage

    def title
      data[:title]
    end

    def speaker
      data[:speaker]
    end

    def preview
      @app.preview_for_talk(eponymous_directory_path)
    end
  end

end
