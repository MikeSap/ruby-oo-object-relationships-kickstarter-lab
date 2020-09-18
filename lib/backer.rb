require 'pry'

class  Backer
    attr_reader :name

    def initialize(name) 
        @name = name
    end

    
    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects
        backed = []
        ProjectBacker.all.each {|p| if      
        p.backer == self
        backed.push(p.project)
    end    
    }
    backed
    end # FIX THIS INTO ONE LINE USE SELECT??

end