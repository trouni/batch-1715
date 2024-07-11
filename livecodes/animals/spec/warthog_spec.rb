require_relative '../warthog'

describe Warthog do
  describe '#talk' do
    it 'returns "Pumbaa grunts" for a warthog named Pumbaa' do
      pumbaa = Warthog.new('Pumbaa')
      expect(pumbaa.talk).to eq('Pumbaa grunts')
    end
  end
end
