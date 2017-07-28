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
  end
end
