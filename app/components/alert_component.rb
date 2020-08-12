class AlertComponent < ViewComponent::Base
  def initialize(type:, message:)
    @type = type
    @message = message
  end

  attr_reader :css_bg_color

  def css_bg_color
    return 'bg-red-500' if @type == :alert

    'bg-blue-500'
  end
end
