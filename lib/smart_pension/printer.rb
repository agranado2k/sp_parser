
module SmartPension
  class Printer
    attr_accessor :info

    def initialize(info)
      @info = info
    end

    def self.for(info, type)
      if type == "page_views"
        Printers::PageViews.new(info)
      else
        Printers::PageUnique.new(info)
      end
    end
  end
end
