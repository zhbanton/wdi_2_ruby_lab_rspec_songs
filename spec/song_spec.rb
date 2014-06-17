require_relative '../lib/song.rb'

describe Song do

  describe 'attributes' do
    it 'has a title, list of artists, duration, and price' do
      song = Song.new(title: 'Baby Got Back', artists: ['Sir-Mix-A-Lot'], duration: 200, price: 0.99)
      expect(song.title).to eq 'Baby Got Back'
      expect(song.artists).to match_array ['Sir-Mix-A-Lot']
      expect(song.duration).to eq 200
      expect(song.price).to eq 0.99
    end
  end

end
