class Backer
  attr_accessor :backed_projects, :name
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def back_project(project)
    # if @backed_projects.include?(project)
    #   @backed_projects
    # else
      @backed_projects << project
      self.add_to_project(project) unless project.
    # end
  end
  
  def add_to_project(project)
    project.add_backer(self)
  end
  
end