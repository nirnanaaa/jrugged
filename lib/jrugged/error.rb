module JRugged
  class Error < StandardError
    
    
    def initialize(native)
      @native = native
      @native
    end

    def inspect
      "#<#{self.class.name}: #{@native.inspect}>"
    end
    

  end
end
