require_relative '../lib/song.rb'

describe Song do
  let(:song) { Song.new(title: 'Baby Got Back', artists: ['Sir-Mix-A-Lot'], duration: 200, price: 0.99) }

  describe 'attributes' do
    it 'has a title, list of artists, duration, and price' do
      expect(song.title).to eq 'Baby Got Back'
      expect(song.artists).to match_array ['Sir-Mix-A-Lot']
      expect(song.duration).to eq 200
      expect(song.price).to eq 0.99
    end
  end

  describe '#discount' do
    it 'reduces the price by a given percentage' do
      song.discount(50)
      expect(song.price).to be_within(0.01).of(0.5)
    end
    it 'is able to handle multiple discounts' do
      song.discount(50)
      song.discount(50)
      expect(song.price).to be_within(0.01).of(0.25)
    end
  end

  describe '#reset' do
    it 'restores the price to its original value' do
      song.discount(50)
      song.reset
      expect(song.price).to eq 0.99
    end
  end


end
