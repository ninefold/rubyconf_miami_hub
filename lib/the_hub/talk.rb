module TheHub
  module Talk

    def self.manipulate_resource_list(resources)
      resources.each do |r|
        if r.path =~ /^talks\/[^\/]+\.html$/
          r.extend TheHub::Talk
        end
      end
    end

    def title
      data[:title]
    end

    def speaker
      data[:speaker]
    end

    def preview
      @app.preview_for_talk(eponymous_directory_path)
    end

    def notes
      @app.notes_for_talk(eponymous_directory_path)
    end
  end
end
