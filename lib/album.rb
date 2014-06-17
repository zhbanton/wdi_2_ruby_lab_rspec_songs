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


end
