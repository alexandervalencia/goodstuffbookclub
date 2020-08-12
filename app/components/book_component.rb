class BookComponent < ViewComponent::Base
  def initialize(book:)
    @book = book
  end
end
