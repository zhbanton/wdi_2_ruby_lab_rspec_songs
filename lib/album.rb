class Album
  attr_reader :title, :tracks

  def initialize(title:, tracks:)
    @title, @tracks = title, tracks
  end
end
