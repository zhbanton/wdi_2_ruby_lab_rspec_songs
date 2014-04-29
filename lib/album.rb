class Album
  attr_reader :title, :tracks

  def initialize(title:, tracks:)
    @title, @tracks = title, tracks
  end

  def duration
    tracks.map(&:duration).reduce(&:+)
  end

  def price
    tracks.map(&:price).reduce(&:+)
  end

  def artists
    tracks.map(&:artists).flatten.uniq.sort
  end

  def single?
    tracks.count == 1
  end
end
