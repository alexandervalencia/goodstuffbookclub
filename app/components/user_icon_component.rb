class UserIconComponent < ViewComponent::Base
  def initialize(user:)
    @user = user
  end

  attr_reader :css_classes

private
  def css_classes
    %w(
      flex
      items-center
      justify-center
      font-bold
      border-2
      py-2
      px-2
      rounded-full
      h-8
      w-8
    ).join(' ')
  end
end
