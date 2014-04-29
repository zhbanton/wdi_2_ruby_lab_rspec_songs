require 'spec_helper'
require_relative '../lib/album'

describe Album do
  describe '#initialize' do
    it 'accepts a title and list of tracks' do
      tracks = [
        Track.new(title: 'Roll with It', artists: ['Steve Winwood'], duration: 320, price: 0.89),
        Track.new(title: 'Pour Some Sugar on Me', artists: ['Def Leppard'], duration: 265, price: 0.99),
        Track.new(title: 'Kokomo', artists: ['The Beach Boys'], duration: 215, price: 0.99)
      ]
      album = Album.new(title: "Party Like It's 1988", tracks: tracks)

      expect(album.title).to eq "Party Like It's 1988"
      expect(album.tracks).to eq tracks
    end
  end
end
