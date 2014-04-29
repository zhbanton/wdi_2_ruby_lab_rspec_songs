require 'spec_helper'
require_relative '../lib/track'

describe Track do
  describe '#initialize' do
    it 'accepts a title, list of artists, duration, and price' do
      track = Track.new(
        title: 'Piano in the Dark',
        artists: ['Brenda Russell', 'Joe Esposito'],
        duration: 320,
        price: 0.99
      )

      expect(track.title).to eq 'Piano in the Dark'
      expect(track.artists).to match_array ['Brenda Russell', 'Joe Esposito']
      expect(track.duration).to eq 320
      expect(track.price).to eq 0.99
    end
  end
end
