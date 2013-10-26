require_relative 'talk'
require_relative 'planner'
require_relative 'notes'
require_relative 'event'
require_relative 'resource'
module TheHub
  class Extension < Middleman::Extension

    option :days, [], 'The days over which the conference (and related events) runs'
    option :sessions, {}, 'A hash of day => ["10:00 AM"] formatted sessions'
    option :breakouts, {}, 'A nested hash of day => time => breakout name'
    option :rooms, [], 'The rooms in which the talks will be held.'

    def initialize(app, options_hash={}, &block)
      super
    end

    def after_configuration
      @app.days.concat options.days
      @app.sessions.merge! options.sessions
      @app.breakouts.merge! options.breakouts
      @app.rooms.concat options.rooms

      [TheHub::Talk, TheHub::Notes, TheHub::Event].each do |resource|
        @app.sitemap.register_resource_list_manipulator("the_hub_#{resource}", TheHub::Resource.new(resource))
      end
    end

    helpers do

      def rooms
        @rooms ||= []
      end

      def days
        @days ||= []
      end

      def breakouts
        @breakout ||= {}
      end

      def sessions
        @sessions ||= {}
      end

      def planner
        TheHub::Planner.new days, sitemap
      end

      def event
        if current_resource.is_a? TheHub::Event
          current_resource
        else
          raise "Not an event."
        end
      end

      def talk
        if current_resource.is_a? TheHub::Talk
          current_resource
        else
          raise "Not a talk."
        end
      end

      def preview_for_talk path
        sitemap.find_resource_by_path(path + 'summary.html')
      end

      def notes_for_talk path
        sitemap.resources.select {|r| r.path =~ /#{path}notes\/.*html$/}
      end

    end

  end
end
