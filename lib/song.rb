class Song
  attr_reader :title, :artists, :duration, :price

  def initialize(title:, artists:, duration:, price:)
    @title = title
    @artists = artists
    @duration = duration
    @price = price
  end

end
