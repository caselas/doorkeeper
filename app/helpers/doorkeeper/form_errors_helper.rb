module Doorkeeper::FormErrorsHelper
  def doorkeeper_errors_for(object, method)
    if object.errors[method].present?
      content_tag(:span, :class => "error help-inline") do
        object.errors[method].join(',')
      end
    end
  end
end
