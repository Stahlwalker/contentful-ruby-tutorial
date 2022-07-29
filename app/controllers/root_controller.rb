class RootController < ApplicationController
    def jobs
        @job_instance = JobService.new    
    end    
end
