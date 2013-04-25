module JRugged

  # == Overview
  #
  # == Notes
  # While there are many similarities between JRugged::Api::Git and Java::org.eclipse.jgit.api.git, 
  # they are not the same thing and this should be more oriented on rugged
  class Repository
    
    class << self
      
      # Creates a new repository on specified location
      def create(location, bare=true)
        init = JGit::Api::InitCommand.new.setBare(bare).setDirectory(location.to_jfile)
      end

    end
    
    # Pretty formatting of a Repository.
    #
    # Returns a very pretty String.
    def inspect
      "#<#{self.class.name}:#{object_id} {path: #{path.inspect}}>"
    end

    
    attr_reader :repository

    # Opens a new Repository
    #
    def initialize(location)
      @repository = JGit::Api::Git.open(location.to_jfile)  
    end



  end
end

