class Task

  @@all_tasks = []

  def initialize description
    @description = description
  end

  #define_method(:initialize) do |description|
  #@description =description
  #end

  def description
    @description
  end

  def self.all
    @@all_tasks
  end
  #define_singleton_method(.all)

  def save
    @@all_tasks.push(self)
  end

  def self.clear
    @@all_tasks = []
    #@@all_tasks.clear build in ruby method
  end
end
