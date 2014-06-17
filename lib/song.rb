class Song
  attr_reader :title, :artists, :duration, :price

  def initialize(title:, artists:, duration:, price:)
    @title = title
    @artists = artists
    @duration = duration
    @price = price
  end

  def discount(percentage)
    @original_price = @price
    @price = @price - (@price * (percentage.to_f / 100))
  end

  def reset
    @price = @original_price if @original_price != nil
  end

end
