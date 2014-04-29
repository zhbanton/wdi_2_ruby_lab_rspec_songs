class Track
  attr_reader :title, :artists, :duration, :price

  def initialize(title:, artists:, duration:, price:)
    @title, @artists, @duration, @price = title, artists, duration, price
    @original_price = price
  end

  def set_discount(percentage)
    @price = @original_price * (1 - percentage)
  end
end
