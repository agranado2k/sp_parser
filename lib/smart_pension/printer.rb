
module SmartPension
  class Printer
    attr_accessor :info

    def initialize(info)
      @info = info
    end

    def self.for(info, type)
      begin
        const_get("SmartPension::Printers::#{type.split("_").collect(&:capitalize).join}").new(info)
      rescue NameError
        fail SmartPension::Printers::UnknownTypeError, "There is no type #{type}"
      end
    end
  end
end
