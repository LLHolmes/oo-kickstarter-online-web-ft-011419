class Project
  attr_accessor :backers, :title
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    self.add_to_backer(backer)
  end
  
  def add_to_backer(backer)
    backer.projects.include?(self)
    backer.add_to_project(self)
  end
  
end