module ApplicationHelper

  def devider
    content_tag(:div, class: 'devider') do
      image_tag("blank.gif", class: "devider_logo")
    end
  end

end
