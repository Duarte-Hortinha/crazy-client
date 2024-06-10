module ApplicationHelper

  def params_blank?(params)
    params.dig(:first).blank? && params.dig(:last).blank? && params.dig(:phone).blank?
  end
end
