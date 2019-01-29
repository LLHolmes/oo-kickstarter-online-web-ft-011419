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
  
  def add_to_project(backer)
    project.add_backer(self)
  end
  
end