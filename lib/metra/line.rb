module MetraSchedule
  class Line
    attr_reader :name, :url, :dir

    LINES = {
    :up_nw => {:name => "Union Pacific Northwest", :url => 'http://metrarail.com/metra/en/home/maps_schedules/metra_system_map/up-nw/schedule.full.html'}
    }

    def initialize(line_name)
      raise ArgumentError.new "That's not a valid line symbol. Please see the list in the README" \
        unless LINES.has_key?(line_name)
      raise ArgumentError.new "Please pass a symbol containing the line name" unless line_name.is_a?(Symbol)
      @name = LINES[line_name][:name]
      @url = LINES[line_name][:url]
    end
    
    def direction(dir=nil)
      raise ArgumentError.new "Direction must be either :inbound or :outbound" unless dir == :outbound || dir == :inbound || dir == nil
      @dir = dir unless dir == nil
      self
    end

    def outbound
      direction(:outbound)
    end

    def inbound
      direction(:inbound)
    end

  end
end
