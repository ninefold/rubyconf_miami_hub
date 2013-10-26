module TheHub
  class Session
    attr_accessor :time
    def initialize time, day, query
      @time, @day, @query = time, day, query
    end

    def type
      return 'breakout' if breakout
      return 'talks' if talks.present?
      return 'keynote' if keynote
    end

    def talks_by_room room
      talks.detect {|t| t.room == room }
    end

    def sorted_talks
      TheHub::ROOMS.map {|r| talks_by_room r}.compact
    end

    def talks
      query.where(:type => 'talk').all.map {|t| TalkItem.new t}
    end

    def breakout
      TheHub::BREAKOUTS.fetch(@day, {})[@time]
    end

    def query
      @query.where(:session => @time)
    end

    def keynote
      TalkItem.new query.where(:type => 'keynote').first if query.where(:type => 'keynote').first
    end


    def to_hash
      {
        :talks => sorted_talks,
        :breakout => breakout
      }
    end
  end
end
