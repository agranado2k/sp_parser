module SmartPension
  class SPLogParser
    def parse(lines)
      data = Parser.new(lines).parse_file
      page_views = Counter.for(data, "page_views").execute
      page_unique = Counter.for(data, "page_unique").execute
      output = Printer.for(page_views, "page_views").print
      output += "\n"
      output += Printer.for(page_unique, "page_unique").print
      output
    end
  end
end
