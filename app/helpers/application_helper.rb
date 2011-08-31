module ApplicationHelper
  def title
    base_title = "Rock'n'Swap.com"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def copyright
    raw "&copy; " + Date.today.year().to_s + " Mike Taylor Design"
  end
end
