class Project
  attr_accessor :backers, :title
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    backer.back_projects(self) unless backer.backed_projects.include?(self)
    # self.add_to_backer(backer)
  end
  
  # def add_to_backer(backer)
  #   backer.projects.include?(self)
  #   backer.add_to_project(self)
  # end
  
end