module SmartPension
  module Counters
    class PageView < Counter
    def execute
      info.reduce({}){|r, (k,v)| r[k] = v.size; r}
    end
    end
  end
end
