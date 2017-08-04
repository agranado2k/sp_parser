module SmartPension
  class Counter
    attr_accessor :info

    def initialize(info)
      @info = info
    end

    def self.for(info, type)
      begin
        const_get("SmartPension::Counters::#{type.split("_").collect(&:capitalize).join}").new(info)
      rescue NameError
        fail SmartPension::Counters::UnknownTypeError, "There is no type #{type}"
      end
    end
  end
end
