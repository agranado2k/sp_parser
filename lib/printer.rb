class Printer
  def print_page_views(page_info)
    print(page_info, "visits")
  end

  def print_page_unique(page_info)
    print(page_info, "unique views")
  end

  def print(page_info, sufix)
    result = ""
    page_info.each do |p, v|
      result += "#{p} #{v} #{sufix}\n"
    end
    result
  end
end
