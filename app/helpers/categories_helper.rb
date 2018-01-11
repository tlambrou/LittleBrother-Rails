module CategoriesHelper

  def nested_criteria(criteria)
    criteria.map do |criterium, subcriteria|
      render(criterium) + content_tag(:div, nested_criteria(subcriteria), :class => "panel-group", :id => ("accordion" + :id))
    end.join.html_safe
  end

end
