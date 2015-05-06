require ('spec_helper')

DB = PG.connect({:dbname => "to_do_test"})

describe(List) do

  describe("#==") do
    it("is the same list if it has the same name") do
      list1 = List.new({:name => "Epicodus stuff", :id => nil})
      list2 = List.new({:name => "Epicodus stuff", :id => nil})
      expect(list1).to(eq(list2))
    end
  end

  describe('.all') do
    it('returns as empty at first') do
      expect(List.all).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a task to the array of saved tasks') do
      test_list = List.new({:name => 'Testing save', :id => nil})
      test_list.save
      expect(List.all).to(eq([test_list]))
    end
  end

  describe('.find') do
    it('returns a list by its id') do
      test_list = List.new({:name => 'epicodus stuff', :id => nil})
      test_list.save()
      test_list2 = List.new({:name => "Home stuff", :id => nil})
      test_list2.save()
      expect(List.find(test_list2.id())).to(eq(test_list2))
    end
  end

  describe

end
