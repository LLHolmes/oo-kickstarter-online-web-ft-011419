class Project
  attr_accessor :backers
  
  def initialize(name)
    @name = name
    @backers = []
  end
  
end