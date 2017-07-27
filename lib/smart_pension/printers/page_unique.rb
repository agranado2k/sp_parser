module SmartPension
  module Printers
    class PageUnique < Printer
      UNIQUE_VIEWS = "unique views"

      def print
        info.reduce("") do |r, (p, v)|
          r += "#{p} #{v} #{UNIQUE_VIEWS}\n"
        end
      end
    end
  end
end
