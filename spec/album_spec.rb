require_relative '../lib/album.rb'
require_relative '../lib/song.rb'

describe Album do
    let (:track1) { Song.new(title: "Don't Stop Believinnn", artists: ['Journey', 'Biggie Smalls'], duration: 187, price: 0.99) }
    let (:track2) { Song.new(title: "When the Lights go Down", artists: ['Mariah Carey', 'Journey'], duration: 190, price: 0.95) }
    let (:tracks) { [track1, track2] }
    let (:album) { Album.new("Journey's Greatest Hits", tracks) }

    #could put in before block
    # before do
    #   @track = Track.new(...)
    #
    # can also put code besides instantiating variables
    # must use instance variable syntax (@track) when referring to variable down below

  describe 'attributes' do
    it 'has a title and ordererd list of track objects' do
      expect(album.title).to eq "Journey's Greatest Hits"
      expect(album.track_list).to eq tracks
    end
  end

  describe '#duration' do
    it 'has a duration' do
      expect(album.duration).to eq 377
    end
  end

  describe '#price' do
    it 'has a price' do
      expect(album.price).to eq 1.94
    end
  end

  describe '#artist_list' do
    it 'returns list of artists in alphabetical order w/o duplicates' do
      expect(album.artist_list).to eq ['Biggie Smalls', 'Journey', 'Mariah Carey']
    end
  end

  describe '#single' do
    it 'returns false if album is not a single' do
      expect(album.single?).to be false
      # expect(album).to_not be_single - shorthand provided by rspec
    end
    it 'returns true if album is a single' do
      album2 = Album.new("x", [track1])
      expect(album2.single?).to be true
    end
  end

  # Alex defined new_track method down here to create throw away tracks for easy testing- called a factory

  def new_track(title: 'x', artists: ['a1', 'a2'], duration: 300, price: 1.0, discount: discount)
    track = Track.new(title: title, artists: artists, duration: duration, price: price)
    track.set_discount(discount)
    track
  end
end
