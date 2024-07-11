require_relative "../animal"

describe Animal do
  describe "#initialize(name)" do
    it "returns an instance of Animal" do
      expect(Animal.new("Cat")).to be_an(Animal) # expect(Animal.new.class).to eq(Animal)
    end
  end

  describe "#name" do
    it "returns the name of the Animal" do
      animal = Animal.new("Cat")
      expect(animal.name).to eq("Cat")
    end
  end

  describe "#eat(food)" do
    it 'returns "Timon eats a scorpion"' do
      animal = Animal.new("Timon")
      actual = animal.eat("a scorpion")
      expect(actual).to eq("Timon eats a scorpion.")
    end

    it 'returns "Cat eats a sausage"' do
      animal = Animal.new("Cat")
      actual = animal.eat("a sausage")
      expect(actual).to eq("Cat eats a sausage.")
    end
  end

  describe ".phyla" do
    it "returns an array of the phyla of the animal kingdom" do
      expect(Animal.phyla).to eq([
        "Phylum Porifera",
        "Phylum Coelenterata",
        "Phylum Platyhelminthes",
        "Phylum Nematoda",
        "Phylum Annelida",
        "Phylum Arthropoda",
        "Phylum Mollusca",
        "Phylum Echinodermata",
        "Phylum Protochordata",
        "Phylum Vertebrata"
      ])
    end
  end
end
