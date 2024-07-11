require_relative '../lion'

describe Lion do
  describe '#talk' do
    it 'returns "Simba roars" for a lion named Simba' do
      simba = Lion.new('Simba')
      expect(simba.talk).to eq('Simba roars')
    end

    it 'returns "Nala roars" for a lion named Nala' do
      nala = Lion.new('Nala')
      expect(nala.talk).to eq('Nala roars')
    end
  end

  describe '#eat' do
    it 'returns "Simba eats a gazelle. Law of the Jungle!"' do
      simba = Lion.new("Simba")
      expect(simba.eat("a gazelle")).to eq("Simba eats a gazelle. Law of the Jungle!")
    end

    it 'returns "Steve eats a whopper. Law of the Jungle!"' do
      steve = Lion.new("Steve")
      expect(steve.eat("a whopper")).to eq("Steve eats a whopper. Law of the Jungle!")
    end
  end
end
