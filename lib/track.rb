class Track
  attr_reader :title, :artists, :duration, :price

  def initialize(title:, artists:, duration:, price:)
    @title, @artists, @duration, @price = title, artists, duration, price
  end
end
