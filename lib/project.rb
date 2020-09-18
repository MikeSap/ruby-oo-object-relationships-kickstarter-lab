class Project
    attr_reader :title

    def initialize(title) 
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end

    def backers
        backers = []
        ProjectBacker.all.each {|p| if      
        p.project == self
        backers.push(p.backer)
    end    
    }
    backers
    end # FIX THIS INTO ONE LINE USE SELECT??
end