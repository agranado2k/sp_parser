module SmartPension
  module Printers
    class PageViews < Printer
      VISITS = "visits"

      def print
        info.reduce("") do |r, (p, v)|
          r += "#{p} #{v} #{VISITS}\n"
        end
      end
    end
  end
end
