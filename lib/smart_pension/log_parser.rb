module SmartPension
  class LogParser
    def split_page_and_ip(line)
      parts = line.split(" ")
      {page: parts[0], ip: parts[1]}
    end

    def include_ip_page_list(page_ip_list, entry)
      page_ip_list[entry[:page]] = page_ip_list.fetch(entry[:page],[]) << entry[:ip]
      page_ip_list
    end

    def page_views(page_ip_list)
      result = {}

      page_ip_list.each do |k,v|
        result[k] = v.size
      end

      result
    end

    def page_unique_visit(page_ip_list)
      result = {}

      page_ip_list.each do |k,v|
        result[k] = v.uniq.size
      end

      result
    end
  end
end
