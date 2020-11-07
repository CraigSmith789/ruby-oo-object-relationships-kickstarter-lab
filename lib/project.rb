class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        array = ProjectBacker.all.select do |project|
                  project.project == self
                 end
         array.map do |project|
             project.backer
         end
     end
end