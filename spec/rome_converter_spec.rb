require 'rome_converter'

RSpec.describe RomeConverter do
  describe 'to_dec' do
    it 'empty string to equal 0' do
      expect(RomeConverter.new.to_dec('').to_i).to eq 0
    end

    it 'I to equal 1' do
      expect(RomeConverter.new.to_dec('I').to_i).to eq 1
    end

    it 'II to equal 2' do
      expect(RomeConverter.new.to_dec('II').to_i).to eq 2
    end

    it 'III to equal 3' do
      expect(RomeConverter.new.to_dec('III').to_i).to eq 3
    end

    it 'IV to equal 4' do
      expect(RomeConverter.new.to_dec('IV').to_i).to eq 4
    end

    it 'V to equal 5' do
      expect(RomeConverter.new.to_dec('V').to_i).to eq 5
    end

    it 'VI to equal 6' do
      expect(RomeConverter.new.to_dec('VI').to_i).to eq 6
    end

    it 'X to equal 10' do
      expect(RomeConverter.new.to_dec('X').to_i).to eq 10
    end

    it 'XV to equal 15' do
      expect(RomeConverter.new.to_dec('XV').to_i).to eq 15
    end

    it 'XVII to equal 17' do
      expect(RomeConverter.new.to_dec('XVII').to_i).to eq 17
    end

    it 'XX to equal 20' do
      expect(RomeConverter.new.to_dec('XX').to_i).to eq 20
    end

    it 'XL to equal 40' do
      expect(RomeConverter.new.to_dec('XL').to_i).to eq 40
    end

    it 'L to equal 50' do
      expect(RomeConverter.new.to_dec('L').to_i).to eq 50
    end

    it 'C to equal 100' do
      expect(RomeConverter.new.to_dec('C').to_i).to eq 100
    end

    it 'CD to equal 400' do
      expect(RomeConverter.new.to_dec('CD').to_i).to eq 400
    end

    it 'D to equal 500' do
      expect(RomeConverter.new.to_dec('D').to_i).to eq 500
    end

    it 'M to equal 1000' do
      expect(RomeConverter.new.to_dec('M').to_i).to eq 1000
    end

    it 'MCMLXXXIVM to equal 1984' do
      expect(RomeConverter.new.to_dec('MCMLXXXIVM').to_i).to eq 1984      
    end

    it 'MMMMCMXCIX to equal 4999' do
      expect(RomeConverter.new.to_dec('MMMMCMXCIX').to_i).to eq 4999
    end
  end

  describe 'to_rome' do
    it '0 to equal ""' do
      expect(RomeConverter.new.to_rome 0).to eq ''
    end

    it '1 to equal I' do
      expect(RomeConverter.new.to_rome 1).to eq 'I'
      expect(RomeConverter.new.to_rome '1').to eq 'I'
    end

    it '2 to equal II' do
      expect(RomeConverter.new.to_rome 2).to eq 'II'
    end

    it '3 to equal III' do
      expect(RomeConverter.new.to_rome 3).to eq 'III'
    end

    it '4 to equal IV' do
      expect(RomeConverter.new.to_rome 4).to eq 'IV'
      expect(RomeConverter.new.to_rome 4).not_to eq 'IIII'
    end

    it '5 to equal V' do
      expect(RomeConverter.new.to_rome 5).to eq 'V'
    end

    it '6 to equal VI' do
      expect(RomeConverter.new.to_rome 6).to eq 'VI'
      expect(RomeConverter.new.to_rome '6').not_to eq 'IIIIX'
      expect(RomeConverter.new.to_rome 6).not_to eq 'IIIIX'
    end

    it '9 to equal IX' do
      expect(RomeConverter.new.to_rome 9).to eq 'IX'
    end

    it '10 to equal X' do
      expect(RomeConverter.new.to_rome 10).to eq 'X'
    end

    it '14 to equal XIV' do
      expect(RomeConverter.new.to_rome 14).to eq 'XIV'
    end

    it '15 to equal XV' do
      expect(RomeConverter.new.to_rome 15).to eq 'XV'
    end

    it '16 to equal XVI' do
      expect(RomeConverter.new.to_rome 16).to eq 'XVI'
    end

    it '20 to equal XX' do
      expect(RomeConverter.new.to_rome 20).to eq 'XX'
    end

    it '26 to equal XXVI' do
      expect(RomeConverter.new.to_rome 26).to eq 'XXVI'
    end

    it '30 to equal XXX' do
      expect(RomeConverter.new.to_rome 30).to eq 'XXX'
    end

    it '40 to equal XL' do
      expect(RomeConverter.new.to_rome 40).to eq 'XL'
    end

    it '50 to equal L' do
      expect(RomeConverter.new.to_rome 50).to eq 'L'
    end

    it '100 to equal C' do
      expect(RomeConverter.new.to_rome 100).to eq 'C'
    end

    it '400 to equal CD' do
      expect(RomeConverter.new.to_rome 400).to eq 'CD'
    end

    it '500 to equal D' do
      expect(RomeConverter.new.to_rome 500).to eq 'D'
    end

    it '600 to equal DC' do
      expect(RomeConverter.new.to_rome 600).to eq 'DC'
    end

    it '777 to equal DCCLXXVII' do
      expect(RomeConverter.new.to_rome 777).to eq 'DCCLXXVII'
    end

    it '900 to equal CM' do
      expect(RomeConverter.new.to_rome 600).to eq 'DC'
    end

    it '1000 to equal M' do
      expect(RomeConverter.new.to_rome 1000).to eq 'M'
    end

    it '1984 to equal MCMLXXXIVM' do
      expect(RomeConverter.new.to_rome 1984).to eq 'MCMLXXXIV'
    end

    it '4999 to equal MMMMCMXCIX' do
      expect(RomeConverter.new.to_rome 4999).to eq 'MMMMCMXCIX'
    end
  end
end
