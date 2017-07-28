module SmartPension
  class Counter
    attr_accessor :info

    def initialize(info)
      @info = info
    end

    def self.for(info, type)
      if type == "page_views"
        SmartPension::Counters::PageView.new(info)
      else
        SmartPension::Counters::PageUnique.new(info)
      end
    end
  end
end
