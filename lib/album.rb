class Album
  attr_reader :title, :track_list

  def initialize(title, tracks)
    @title = title
    @track_list = tracks
  end

  def duration
    sum = 0
    @track_list.each do |track|
      sum += track.duration
    end
    sum
  end

  def price
    # @track_list.map(&:price).reduce(0, &:+)
    prices = @track_list.map { |track| track.price }
    prices.reduce { |sum, price| sum + price }
  end

  def artist_list
    # artists = []
    #   @track_list.each do |track|
    #     track.artists.each do |artist|
    #       artists << artist
    #     end
    #   end
    # artists.uniq.sort

    track_list.map(&:artists).flatten.uniq.sort
  end

  def single?
    @track_list.length == 1
  end

end
