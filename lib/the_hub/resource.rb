module TheHub
  class Resource
    def initialize type
      @type = type
    end

    def manipulate_resource_list(resources)
      resources.each do |r|
        if r.path =~ @type::SELECTOR
          r.extend @type
        end
      end
    end
  end
end
