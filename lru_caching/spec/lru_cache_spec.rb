require 'lru_cache'

describe LRUCache do
  let(:size_of_lru) { 4 }
  subject(:lru) { LRUCache.new(size_of_lru) }
  
  describe '#initialize' do 
    it "should not raise error at initialization" do
      expect { LRUCache.new(4) }.to_not raise_error
    end

    let(:lru_cache) { LRUCache.new(4) }
    it "should accept number (n) and assign n to @max_size ivar" do
       expect(lru_cache.instance_variable_get(:@max_size)).to eq(4)
    end
  end

  describe '#count' do
    it 'Should not raise an error' do
      expect{ lru.count }.to_not raise_error
    end

    it 'Should return size of the cache' do
      expect(lru.count).to eq(size_of_lru)
    end

    it 'Should not equal to 5' do
      expect(lru.count).to_not eq(5)
    end
  end

  describe '#add' do
     it 'should not return an error' do
      expect { lru.add(1)}.to_not raise_error
     end


     it 'Should add element at the end of the array' do
      lru.add(1)
      expect(lru.underlying_array.last).to eq(1)
     end

     it 'Should remove first element before pushing new element when size of the cache e'
  end

end