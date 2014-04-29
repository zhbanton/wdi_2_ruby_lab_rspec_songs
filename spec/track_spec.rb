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

  describe '#set_discount' do
    before do
      @track = Track.new(
        title: "When It's Love",
        artists: ['Van Halen'],
        duration: 339,
        price: 1.0
      )
    end

    it 'marks down the price of the track' do
      @track.set_discount(0.2)

      expect(@track.price).to eq 0.8
    end

    it 'replaces any previous discount' do
      @track.set_discount(0.2)
      @track.set_discount(0.15)

      expect(@track.price).to eq 0.85
    end
  end
end
