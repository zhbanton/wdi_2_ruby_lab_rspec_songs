class Album
  attr_reader :title, :tracks

  def initialize(title:, tracks:)
    @title, @tracks = title, tracks
  end

  def duration
    tracks.map(&:duration).reduce(&:+)
  end
end
