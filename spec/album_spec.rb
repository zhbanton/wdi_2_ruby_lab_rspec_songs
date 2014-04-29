require 'spec_helper'
require_relative '../lib/album'

describe Album do
  describe '#initialize' do
    it 'accepts a title and list of tracks' do
      tracks = [
        Track.new(title: 'Roll with It', artists: ['Steve Winwood'], duration: 320, price: 0.89),
        Track.new(title: 'Pour Some Sugar on Me', artists: ['Def Leppard'], duration: 265, price: 0.89),
        Track.new(title: 'Kokomo', artists: ['The Beach Boys'], duration: 215, price: 0.99),
        Track.new(title: 'Never Gonna Give You Up', artists: ['Rick Astley'], duration: 212, price: 1.29),
        Track.new(title: "Sweet Child o' Mine", artists: ["Guns N' Roses"], duration: 356, price: 0.99),
        Track.new(title: 'Hold On to the Nights', artists: ['Richard Marx'], duration: 314, price: 0.99)
      ]
      album = Album.new(title: "Party Like It's 1988", tracks: tracks)

      expect(album.title).to eq "Party Like It's 1988"
      expect(album.tracks).to eq tracks
    end
  end

  describe '#duration' do
    it 'sums the durations of all tracks' do
      tracks = [
        new_track(duration: 100),
        new_track(duration: 320),
        new_track(duration: 255)
      ]
      album = Album.new(title: 'duration test', tracks: tracks)

      expect(album.duration).to eq 675
    end
  end

  def new_track(title: 'x', artists: ['a1', 'a2'], duration: 300, price: 1.0)
    Track.new(title: title, artists: artists, duration: duration, price: price)
  end
end
