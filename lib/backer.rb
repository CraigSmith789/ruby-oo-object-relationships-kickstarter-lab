class Backer
    attr_accessor :name
    
    def initialize(name)
    @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
       array = ProjectBacker.all.select do |project|
                 project.backer == self
                end
        array.map do |project|
            project.project
        end
    end


end