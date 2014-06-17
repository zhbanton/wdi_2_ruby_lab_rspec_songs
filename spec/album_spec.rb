require_relative '../lib/album.rb'
require_relative '../lib/song.rb'

describe Album do
    let (:track1) { Song.new(title: "Don't Stop Believinnn", artists: ['Journey'], duration: 187, price: 0.99) }
    let (:track2) { Song.new(title: "When the Lights go Down", artists: ['Journey'], duration: 190, price: 0.95) }
    let (:tracks) { [track1, track2] }
    let (:album) { Album.new("Journey's Greatest Hits", tracks) }

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

end
