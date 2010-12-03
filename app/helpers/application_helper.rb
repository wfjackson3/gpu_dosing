module ApplicationHelper
  # return a title on a per page basis
  def title
    base_title="Grundfos Pumps Dosing Parts Selector"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
end
