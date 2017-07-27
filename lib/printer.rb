class Printer
  VISITS = "visits"
  UNIQUE_VIEWS = "unique views"

  def print_page_views(page_info)
    print(page_info, VISITS)
  end

  def print_page_unique(page_info)
    print(page_info, UNIQUE_VIEWS)
  end

  def print(page_info, sufix)
    page_info.reduce("") do |r, (p, v)|
      r += "#{p} #{v} #{sufix}\n"
    end
  end
end
