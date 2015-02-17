require 'rspec'
require 'task'


describe Task do
  before do
    Task.clear
  end

  describe '#description' do
    it 'describes what task is being done' do
      test_task = Task.new("wash the dishes")
      expect(test_task.description).to eq "wash the dishes"
    end
  end

  describe '.all' do
   it 'empty at first' do
     expect(Task.all).to eq []
   end
  end

  #describe('.all') do
  #  it ('empty at first') do
  #    expect(Task.all()).to(eq([]))
  #  end
  #end



  describe '#save' do
    it 'adds task and saves to the list' do
      test_task = Task.new("walk the panther")
      test_task.save
      expect(Task.all).to eq [test_task]
    end
  end

  describe '.clear' do
    it ' empties out all of the saved tasks' do
      Task.new('go to Jamaica').save
      Task.clear
      expect(Task.all).to eq []
    end
  end
end
