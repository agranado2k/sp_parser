module SmartPension
  module Counters
    class PageUnique < Counter
      def execute
        info.reduce({}){|r, (k,v)| r[k] = v.uniq.size; r}
      end
    end
  end
end
