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
  end
end