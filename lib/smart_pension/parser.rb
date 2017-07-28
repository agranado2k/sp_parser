module SmartPension
  class Parser
    def parse_file(lines)
      lines.reduce({}) do |r, line|
        r = from_entry(r, split_page_and_ip(line))
      end
    end

    def from_entry(page_ip_list, entry)
      page_ip_list[entry[:page]] = page_ip_list.fetch(entry[:page],[]) << entry[:ip]
      page_ip_list
    end

    def split_page_and_ip(line)
      parts = line.split(" ")
      {page: parts[0], ip: parts[1]}
    end
  end
end
