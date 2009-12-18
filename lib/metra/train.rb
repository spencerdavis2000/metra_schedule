module MetraSchedule
  class Train
    attr_reader :train_num, :schedule, :bikes, :direction, :stops

    def initialize(options={})
      unless options.empty?
        @train_num = options[:train_num] if options.has_key?(:train_num)
        @schedule = options[:schedule] if options.has_key?(:schedule)
        @bikes = options[:bikes] if options.has_key?(:bikes)
        @direction = options[:direction] if options.has_key?(:direction)
        @stops = options[:stops] if options.has_key?(:stops)
      end
    end

    def has_stop?(stop)
      return true if stops.any? {|s| s.station == stop}
      false
    end

    def in_time?(station, time)
      return true if stops.find {|s| s.station == station}.time > time
      false
    end

  end
end
